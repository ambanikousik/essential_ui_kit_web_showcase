import 'package:essential_ui_kit_web_showcase/domain/widget_state/widget_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pageNotifier =
    StateNotifierProvider<PageNotifier, WidgetState>((ref) => PageNotifier());

class PageNotifier extends StateNotifier<WidgetState> {
  PageNotifier() : super(WidgetState.counter());

  void toCounter() {
    state = WidgetState.counter();
  }

  void toText() {
    state = WidgetState.general();
  }
}
