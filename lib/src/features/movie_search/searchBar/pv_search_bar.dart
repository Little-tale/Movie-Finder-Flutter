import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pv_search_bar.g.dart';

class SearchBarState {
  final String text;
  final bool isFocus;

  const SearchBarState({this.text = '', this.isFocus = false});

  SearchBarState copyWith({String? text, bool? isFocus}) {
    return SearchBarState(
      text: text ?? this.text,
      isFocus: isFocus ?? this.isFocus,
    );
  }
}

@riverpod
class SearchBar extends _$SearchBar {
  @override
  SearchBarState build() {
    return SearchBarState();
  }

  void changedText(String text) {
    state = state.copyWith(text: text);
  }

  void changeFocus(bool trigger) {
    state = state.copyWith(isFocus: trigger);
  }
}
