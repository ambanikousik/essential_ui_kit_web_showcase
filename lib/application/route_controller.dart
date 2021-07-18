import 'package:essential_ui_kit_web_showcase/domain/node_to_route/node_to_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final routeNotifier =
    StateNotifierProvider<RouteNotifier, NodeToRoute>((ref) => RouteNotifier());

class RouteNotifier extends StateNotifier<NodeToRoute> {
  RouteNotifier() : super(NodeToRoute.empty());

  toRoute(NodeToRoute route) {
    state = route;
  }
}
