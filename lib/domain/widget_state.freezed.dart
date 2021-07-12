// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'widget_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WidgetStateTearOff {
  const _$WidgetStateTearOff();

  _Counter counter() {
    return _Counter();
  }

  _General general() {
    return _General();
  }
}

/// @nodoc
const $WidgetState = _$WidgetStateTearOff();

/// @nodoc
mixin _$WidgetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() counter,
    required TResult Function() general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? counter,
    TResult Function()? general,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Counter value) counter,
    required TResult Function(_General value) general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Counter value)? counter,
    TResult Function(_General value)? general,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WidgetStateCopyWith<$Res> {
  factory $WidgetStateCopyWith(
          WidgetState value, $Res Function(WidgetState) then) =
      _$WidgetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WidgetStateCopyWithImpl<$Res> implements $WidgetStateCopyWith<$Res> {
  _$WidgetStateCopyWithImpl(this._value, this._then);

  final WidgetState _value;
  // ignore: unused_field
  final $Res Function(WidgetState) _then;
}

/// @nodoc
abstract class _$CounterCopyWith<$Res> {
  factory _$CounterCopyWith(_Counter value, $Res Function(_Counter) then) =
      __$CounterCopyWithImpl<$Res>;
}

/// @nodoc
class __$CounterCopyWithImpl<$Res> extends _$WidgetStateCopyWithImpl<$Res>
    implements _$CounterCopyWith<$Res> {
  __$CounterCopyWithImpl(_Counter _value, $Res Function(_Counter) _then)
      : super(_value, (v) => _then(v as _Counter));

  @override
  _Counter get _value => super._value as _Counter;
}

/// @nodoc

class _$_Counter implements _Counter {
  _$_Counter();

  @override
  String toString() {
    return 'WidgetState.counter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Counter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() counter,
    required TResult Function() general,
  }) {
    return counter();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? counter,
    TResult Function()? general,
    required TResult orElse(),
  }) {
    if (counter != null) {
      return counter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Counter value) counter,
    required TResult Function(_General value) general,
  }) {
    return counter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Counter value)? counter,
    TResult Function(_General value)? general,
    required TResult orElse(),
  }) {
    if (counter != null) {
      return counter(this);
    }
    return orElse();
  }
}

abstract class _Counter implements WidgetState {
  factory _Counter() = _$_Counter;
}

/// @nodoc
abstract class _$GeneralCopyWith<$Res> {
  factory _$GeneralCopyWith(_General value, $Res Function(_General) then) =
      __$GeneralCopyWithImpl<$Res>;
}

/// @nodoc
class __$GeneralCopyWithImpl<$Res> extends _$WidgetStateCopyWithImpl<$Res>
    implements _$GeneralCopyWith<$Res> {
  __$GeneralCopyWithImpl(_General _value, $Res Function(_General) _then)
      : super(_value, (v) => _then(v as _General));

  @override
  _General get _value => super._value as _General;
}

/// @nodoc

class _$_General implements _General {
  _$_General();

  @override
  String toString() {
    return 'WidgetState.general()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _General);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() counter,
    required TResult Function() general,
  }) {
    return general();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? counter,
    TResult Function()? general,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Counter value) counter,
    required TResult Function(_General value) general,
  }) {
    return general(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Counter value)? counter,
    TResult Function(_General value)? general,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(this);
    }
    return orElse();
  }
}

abstract class _General implements WidgetState {
  factory _General() = _$_General;
}
