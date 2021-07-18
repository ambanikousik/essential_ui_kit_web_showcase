// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'device_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeviceStateTearOff {
  const _$DeviceStateTearOff();

  _DeviceState call(DeviceInfo device, bool showFrame) {
    return _DeviceState(
      device,
      showFrame,
    );
  }
}

/// @nodoc
const $DeviceState = _$DeviceStateTearOff();

/// @nodoc
mixin _$DeviceState {
  DeviceInfo get device => throw _privateConstructorUsedError;
  bool get showFrame => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceStateCopyWith<DeviceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceStateCopyWith<$Res> {
  factory $DeviceStateCopyWith(
          DeviceState value, $Res Function(DeviceState) then) =
      _$DeviceStateCopyWithImpl<$Res>;
  $Res call({DeviceInfo device, bool showFrame});

  $DeviceInfoCopyWith<$Res> get device;
}

/// @nodoc
class _$DeviceStateCopyWithImpl<$Res> implements $DeviceStateCopyWith<$Res> {
  _$DeviceStateCopyWithImpl(this._value, this._then);

  final DeviceState _value;
  // ignore: unused_field
  final $Res Function(DeviceState) _then;

  @override
  $Res call({
    Object? device = freezed,
    Object? showFrame = freezed,
  }) {
    return _then(_value.copyWith(
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as DeviceInfo,
      showFrame: showFrame == freezed
          ? _value.showFrame
          : showFrame // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $DeviceInfoCopyWith<$Res> get device {
    return $DeviceInfoCopyWith<$Res>(_value.device, (value) {
      return _then(_value.copyWith(device: value));
    });
  }
}

/// @nodoc
abstract class _$DeviceStateCopyWith<$Res>
    implements $DeviceStateCopyWith<$Res> {
  factory _$DeviceStateCopyWith(
          _DeviceState value, $Res Function(_DeviceState) then) =
      __$DeviceStateCopyWithImpl<$Res>;
  @override
  $Res call({DeviceInfo device, bool showFrame});

  @override
  $DeviceInfoCopyWith<$Res> get device;
}

/// @nodoc
class __$DeviceStateCopyWithImpl<$Res> extends _$DeviceStateCopyWithImpl<$Res>
    implements _$DeviceStateCopyWith<$Res> {
  __$DeviceStateCopyWithImpl(
      _DeviceState _value, $Res Function(_DeviceState) _then)
      : super(_value, (v) => _then(v as _DeviceState));

  @override
  _DeviceState get _value => super._value as _DeviceState;

  @override
  $Res call({
    Object? device = freezed,
    Object? showFrame = freezed,
  }) {
    return _then(_DeviceState(
      device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as DeviceInfo,
      showFrame == freezed
          ? _value.showFrame
          : showFrame // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DeviceState implements _DeviceState {
  _$_DeviceState(this.device, this.showFrame);

  @override
  final DeviceInfo device;
  @override
  final bool showFrame;

  @override
  String toString() {
    return 'DeviceState(device: $device, showFrame: $showFrame)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeviceState &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)) &&
            (identical(other.showFrame, showFrame) ||
                const DeepCollectionEquality()
                    .equals(other.showFrame, showFrame)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(device) ^
      const DeepCollectionEquality().hash(showFrame);

  @JsonKey(ignore: true)
  @override
  _$DeviceStateCopyWith<_DeviceState> get copyWith =>
      __$DeviceStateCopyWithImpl<_DeviceState>(this, _$identity);
}

abstract class _DeviceState implements DeviceState {
  factory _DeviceState(DeviceInfo device, bool showFrame) = _$_DeviceState;

  @override
  DeviceInfo get device => throw _privateConstructorUsedError;
  @override
  bool get showFrame => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeviceStateCopyWith<_DeviceState> get copyWith =>
      throw _privateConstructorUsedError;
}
