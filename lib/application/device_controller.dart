import 'package:device_frame/device_frame.dart';
import 'package:essential_ui_kit_web_showcase/domain/device_state/device_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final deviceNotifier = StateNotifierProvider<DeviceNotifier, DeviceState>(
    (ref) => DeviceNotifier());

class DeviceNotifier extends StateNotifier<DeviceState> {
  DeviceNotifier() : super(DeviceState.init());

  void changeDevice(DeviceInfo deviceInfo) {
    state = state.copyWith(device: deviceInfo);
  }

  void changeFrameVisibility(bool showFrame) {
    state = state.copyWith(showFrame: showFrame);
  }
}
