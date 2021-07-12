import 'package:freezed_annotation/freezed_annotation.dart';

part 'widget_state.freezed.dart';

@freezed
class WidgetState with _$WidgetState {
  factory WidgetState.counter() = _Counter;
  factory WidgetState.general() = _General;
}
