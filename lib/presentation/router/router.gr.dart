// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/counter_page.dart' as _i5;
import '../pages/dashboard_page.dart' as _i3;
import '../pages/home_page.dart' as _i4;
import '../pages/text_page.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    DashBoardRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.DashBoardPage();
        }),
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.HomePage();
        }),
    CounterRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CounterRouteArgs>();
          return _i5.CounterPage(key: args.key, title: args.title);
        }),
    TextRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.TextPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(DashBoardRoute.name, path: '/', children: [
          _i1.RouteConfig(HomeRoute.name, path: 'home-page'),
          _i1.RouteConfig(CounterRoute.name, path: 'counter-page'),
          _i1.RouteConfig(TextRoute.name, path: 'text-page')
        ])
      ];
}

class DashBoardRoute extends _i1.PageRouteInfo {
  const DashBoardRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'DashBoardRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: 'home-page');

  static const String name = 'HomeRoute';
}

class CounterRoute extends _i1.PageRouteInfo<CounterRouteArgs> {
  CounterRoute({_i2.Key? key, required String title})
      : super(name,
            path: 'counter-page',
            args: CounterRouteArgs(key: key, title: title));

  static const String name = 'CounterRoute';
}

class CounterRouteArgs {
  const CounterRouteArgs({this.key, required this.title});

  final _i2.Key? key;

  final String title;
}

class TextRoute extends _i1.PageRouteInfo {
  const TextRoute() : super(name, path: 'text-page');

  static const String name = 'TextRoute';
}
