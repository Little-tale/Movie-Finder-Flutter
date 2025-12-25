import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

final youtubeControllerProvider = Provider.autoDispose
    .family<YoutubePlayerController, String>((ref, videoId) {
      final controller = YoutubePlayerController.fromVideoId(
        videoId: videoId,
        autoPlay: true,
        params: const YoutubePlayerParams(
          mute: false,
          showVideoAnnotations: false,
          showFullscreenButton: false,
          showControls: false,
          pointerEvents: PointerEvents.none,
          // origin: "https://www.youtube.com/watch?v",\
          origin: 'https://www.youtube-nocookie.com',
          captionLanguage: "ko",
          interfaceLanguage: "ko",
        ),
      );

      // controller.cueVideoById(videoId: videoId);
      controller.listen((value) => debugPrint('$value'));
      ref.onDispose(controller.close);
      return controller;
    });
