import 'package:auto_route/auto_route.dart';
import 'package:essential_ui_kit_web_showcase/presentation/pages/x_button_page.dart';
import 'package:essential_ui_kit_web_showcase/presentation/pages/x_text_page.dart';
import 'package:essential_ui_kit_web_showcase/presentation/router/router.gr.dart';
import 'package:flutter_treeview/flutter_treeview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'node_to_route.freezed.dart';

@freezed
class NodeToRoute with _$NodeToRoute {
  factory NodeToRoute(PageRouteInfo route, String code) = _NodeToRoute;
  factory NodeToRoute.empty() => _NodeToRoute(const XTextRoute(), '');
}

class NodeToRouteHelper {
  static final Map<String, Map<String, NodeToRoute>> data = {
    'XWidgets': {
      "XText": NodeToRoute(const XTextRoute(), XTextPage.code),
      "XButton": NodeToRoute(const XButtonRoute(), XButtonPage.code)
    },
    'XDialogue': {},
    'XDdropdown': {},
    'XCard': {},
    'XSnackbar': {},
    'XToast': {}
  };

  static List<Node> dataToNode() {
    return data
        .map((key, pValue) => MapEntry(
            key,
            Node(
              key: key,
              label: key,
              parent: true,
              children: pValue
                  .map((cKey, cValue) => MapEntry(
                      cKey,
                      Node<NodeToRoute>(
                          key: cValue.route.routeName,
                          label: cKey,
                          data: cValue)))
                  .values
                  .toList(),
            )))
        .values
        .toList();
  }
}
