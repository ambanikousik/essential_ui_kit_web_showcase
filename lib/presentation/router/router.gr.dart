// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../dashboard_page.dart' as _i3;
import '../pages/home_page.dart' as _i4;
import '../pages/x_button_page.dart' as _i6;
import '../pages/x_dialogue_page.dart' as _i7;
import '../pages/x_text_page.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    DashBoardRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<DashBoardRouteArgs>(
              orElse: () => const DashBoardRouteArgs());
          return _i3.DashBoardPage(key: args.key);
        }),
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.HomePage();
        }),
    XTextRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.XTextPage();
        }),
    XButtonRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.XButtonPage();
        }),
    XDialogueRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.XDialoguePage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(DashBoardRoute.name, path: '/', children: [
          _i1.RouteConfig(HomeRoute.name, path: ''),
          _i1.RouteConfig(XTextRoute.name, path: 'x-text-page'),
          _i1.RouteConfig(XButtonRoute.name, path: 'x-button-page'),
          _i1.RouteConfig(XDialogueRoute.name, path: 'x-dialogue-page')
        ])
      ];
}

class DashBoardRoute extends _i1.PageRouteInfo<DashBoardRouteArgs> {
  DashBoardRoute({_i2.Key? key, List<_i1.PageRouteInfo>? children})
      : super(name,
            path: '/',
            args: DashBoardRouteArgs(key: key),
            initialChildren: children);

  static const String name = 'DashBoardRoute';
}

class DashBoardRouteArgs {
  const DashBoardRouteArgs({this.key});

  final _i2.Key? key;
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

class XTextRoute extends _i1.PageRouteInfo {
  const XTextRoute() : super(name, path: 'x-text-page');

  static const String name = 'XTextRoute';
}

class XButtonRoute extends _i1.PageRouteInfo {
  const XButtonRoute() : super(name, path: 'x-button-page');

  static const String name = 'XButtonRoute';
}

class XDialogueRoute extends _i1.PageRouteInfo {
  const XDialogueRoute() : super(name, path: 'x-dialogue-page');

  static const String name = 'XDialogueRoute';
}
