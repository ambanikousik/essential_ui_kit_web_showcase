import 'package:device_frame/device_frame.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_state.freezed.dart';

@freezed
class DeviceState with _$DeviceState {
  factory DeviceState(DeviceInfo device, bool showFrame) = _DeviceState;
  factory DeviceState.init() => DeviceState(Devices.ios.iPhone11ProMax, true);
}
