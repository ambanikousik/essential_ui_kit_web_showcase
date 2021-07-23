import 'package:auto_route/auto_route.dart';
import 'package:essential_ui_kit_web_showcase/presentation/pages/x_button_page.dart';
import 'package:essential_ui_kit_web_showcase/presentation/pages/x_dialogue_page.dart';
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
  static final Map<String, dynamic> data = {
    "XText": NodeToRoute(const XTextRoute(), XTextPage.code),
    "XButton": NodeToRoute(const XButtonRoute(), XButtonPage.code),
    'XDialogue': NodeToRoute(const XDialogueRoute(), XDialoguePage.code),
    'XDdropdown': {},
    'XCard': {},
    'XSnackbar': NodeToRoute(const XButtonRoute(), XButtonPage.code),
    'XToast': {}
  };

  static List<Node> dataToNode() {
    return data
        .map((key, pValue) {
          if (pValue is Map<String, NodeToRoute>) {
            return MapEntry(
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
                ));
          } else {
            return MapEntry(
                key,
                Node(
                  key: key,
                  label: key,
                  data: pValue,
                ));
          }
        })
        .values
        .toList();
  }
}
