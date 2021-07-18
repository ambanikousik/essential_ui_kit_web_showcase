// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'node_to_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NodeToRouteTearOff {
  const _$NodeToRouteTearOff();

  _NodeToRoute call(PageRouteInfo<dynamic> route, String code) {
    return _NodeToRoute(
      route,
      code,
    );
  }
}

/// @nodoc
const $NodeToRoute = _$NodeToRouteTearOff();

/// @nodoc
mixin _$NodeToRoute {
  PageRouteInfo<dynamic> get route => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NodeToRouteCopyWith<NodeToRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeToRouteCopyWith<$Res> {
  factory $NodeToRouteCopyWith(
          NodeToRoute value, $Res Function(NodeToRoute) then) =
      _$NodeToRouteCopyWithImpl<$Res>;
  $Res call({PageRouteInfo<dynamic> route, String code});
}

/// @nodoc
class _$NodeToRouteCopyWithImpl<$Res> implements $NodeToRouteCopyWith<$Res> {
  _$NodeToRouteCopyWithImpl(this._value, this._then);

  final NodeToRoute _value;
  // ignore: unused_field
  final $Res Function(NodeToRoute) _then;

  @override
  $Res call({
    Object? route = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NodeToRouteCopyWith<$Res>
    implements $NodeToRouteCopyWith<$Res> {
  factory _$NodeToRouteCopyWith(
          _NodeToRoute value, $Res Function(_NodeToRoute) then) =
      __$NodeToRouteCopyWithImpl<$Res>;
  @override
  $Res call({PageRouteInfo<dynamic> route, String code});
}

/// @nodoc
class __$NodeToRouteCopyWithImpl<$Res> extends _$NodeToRouteCopyWithImpl<$Res>
    implements _$NodeToRouteCopyWith<$Res> {
  __$NodeToRouteCopyWithImpl(
      _NodeToRoute _value, $Res Function(_NodeToRoute) _then)
      : super(_value, (v) => _then(v as _NodeToRoute));

  @override
  _NodeToRoute get _value => super._value as _NodeToRoute;

  @override
  $Res call({
    Object? route = freezed,
    Object? code = freezed,
  }) {
    return _then(_NodeToRoute(
      route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NodeToRoute implements _NodeToRoute {
  _$_NodeToRoute(this.route, this.code);

  @override
  final PageRouteInfo<dynamic> route;
  @override
  final String code;

  @override
  String toString() {
    return 'NodeToRoute(route: $route, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NodeToRoute &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(route) ^
      const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$NodeToRouteCopyWith<_NodeToRoute> get copyWith =>
      __$NodeToRouteCopyWithImpl<_NodeToRoute>(this, _$identity);
}

abstract class _NodeToRoute implements NodeToRoute {
  factory _NodeToRoute(PageRouteInfo<dynamic> route, String code) =
      _$_NodeToRoute;

  @override
  PageRouteInfo<dynamic> get route => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NodeToRouteCopyWith<_NodeToRoute> get copyWith =>
      throw _privateConstructorUsedError;
}
