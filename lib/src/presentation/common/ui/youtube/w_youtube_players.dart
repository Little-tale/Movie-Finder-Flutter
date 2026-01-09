import 'package:flutter/cupertino.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'dart:async';

class YoutubePlayers extends StatefulWidget {
  const YoutubePlayers({required this.ids, this.onFinished, super.key});

  final List<String> ids;
  final VoidCallback? onFinished;

  @override
  State<YoutubePlayers> createState() => _YoutubePlayersState();
}

class _YoutubePlayersState extends State<YoutubePlayers> {
  YoutubePlayerController? _controller;
  StreamSubscription<YoutubePlayerValue>? _sub;
  int currentIdx = 0;

  List<String> get _ids =>
      widget.ids.map((e) => e.trim()).where((e) => e.isNotEmpty).toList();

  YoutubePlayerController _createController(String videoId) {
    final id = videoId.replaceAll('-', '_');

    return YoutubePlayerController.fromVideoId(
      videoId: id,
      autoPlay: true,
      params: const YoutubePlayerParams(
        mute: false,
        showControls: false,
        showFullscreenButton: false,
        showVideoAnnotations: false,
        pointerEvents: PointerEvents.none,
        captionLanguage: 'ko',
        interfaceLanguage: 'ko',
        origin: 'https://www.youtube-nocookie.com',
      ),
    );
  }

  void _attachListener() {
    _sub?.cancel();
    final c = _controller;
    if (c == null) return;
    _sub = c.stream.listen((value) {
      final err = value.error;

      final blocked =
          err == YoutubeError.notEmbeddable ||
          err == YoutubeError.sameAsNotEmbeddable;
      debugPrint("ERROR");
      debugPrint(err.toString());

      if (blocked || value.playerState == PlayerState.ended) {
        _goNextOrFinish();
      } else if (err != YoutubeError.none) {
        final id = _ids[currentIdx].replaceAll("-", "_");
        c.cueVideoById(videoId: id);
        c.playVideo();
      }
    });
  }

  void _goTo(int index) {
    final ids = _ids;
    if (ids.isEmpty) return;

    final safe = index.clamp(0, ids.length - 1);
    currentIdx = safe;

    final c = _controller;
    if (c == null) return;

    c.loadVideoById(videoId: ids[safe]);
  }

  void _goNextOrFinish() {
    final ids = _ids;
    if (ids.isEmpty) return;

    final next = currentIdx + 1;

    if (next >= ids.length) {
      widget.onFinished?.call();
      return;
    }

    _goTo(next);
  }

  @override
  void initState() {
    super.initState();

    final ids = _ids;
    if (ids.isEmpty) return;

    _controller = _createController(ids.first);
    _attachListener();
  }

  @override
  void didUpdateWidget(covariant YoutubePlayers oldWidget) {
    super.didUpdateWidget(oldWidget);

    // ids 내용이 바뀌면 첫 영상부터
    final oldIds = oldWidget.ids
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toList();
    final newIds = _ids;

    if (oldIds.join('|') != newIds.join('|')) {
      currentIdx = 0;

      if (newIds.isEmpty) {
        widget.onFinished?.call();
        return;
      }

      // 컨트롤러가 없으면 새로, 있으면 첫 영상
      if (_controller == null) {
        _controller = _createController(newIds.first);
        _attachListener();
      } else {
        _controller!.loadVideoById(videoId: newIds.first);
      }
    }
  }

  @override
  void dispose() {
    _sub?.cancel();
    _controller?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ids = _ids;
    if (ids.isEmpty || _controller == null) return const SizedBox.shrink();

    return YoutubePlayer(controller: _controller!, aspectRatio: 16 / 9);
  }
}
