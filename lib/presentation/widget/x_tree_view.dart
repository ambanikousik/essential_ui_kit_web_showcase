import 'package:essential_ui_kit_web_showcase/application/route_controller.dart';
import 'package:essential_ui_kit_web_showcase/domain/node_to_route/node_to_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_treeview/flutter_treeview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

class XTreeViewPage extends StatefulWidget {
  const XTreeViewPage({
    Key? key,
  }) : super(key: key);

  @override
  _XTreeViewPageState createState() => _XTreeViewPageState();
}

class _XTreeViewPageState extends State<XTreeViewPage> {
  List<Node> _nodes = [];
  TreeViewController? _treeViewController;

  @override
  void initState() {
    _nodes = NodeToRouteHelper.dataToNode();
    _treeViewController = TreeViewController(
      children: _nodes,
      selectedKey: '',
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TreeViewTheme _treeViewTheme = TreeViewTheme(
      expanderTheme: const ExpanderThemeData(
          type: ExpanderType.chevron,
          modifier: ExpanderModifier.none,
          position: ExpanderPosition.start,
          size: 20,
          color: Colors.blue),
      labelStyle:
          GoogleFonts.lato(color: Colors.grey, fontWeight: FontWeight.w300),
      parentLabelStyle: GoogleFonts.roboto(color: Colors.grey),
      iconTheme: IconThemeData(
        size: 18,
        color: Colors.grey.shade800,
      ),
      colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: const Color(0xff1b1e26),
            onPrimary: Colors.white,
          ),
    );
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color(0xff22252f),
          boxShadow: [
            BoxShadow(
                color: Constants.softHighlightColor,
                offset: const Offset(-10, -10),
                spreadRadius: 0,
                blurRadius: 10),
            BoxShadow(
                color: Constants.softShadowColor,
                offset: const Offset(10, 10),
                spreadRadius: 0,
                blurRadius: 10)
          ],
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(10),
      child: TreeView(
        controller: _treeViewController!,
        onExpansionChanged: (key, expanded) => _expandNode(key, expanded),
        allowParentSelect: false,
        supportParentDoubleTap: false,
        onNodeTap: (key) {
          setState(() {
            _treeViewController = _treeViewController!.copyWith(
              selectedKey: key,
            );
          });
          context
              .read(routeNotifier.notifier)
              .toRoute(_treeViewController!.selectedNode?.data);
        },
        theme: _treeViewTheme,
      ),
    );
  }

  _expandNode(String key, bool expanded) {
    String msg = '${expanded ? "Expanded" : "Collapsed"}: $key';
    debugPrint(msg);
    Node? node = _treeViewController?.getNode(key);
    if (node != null) {
      List<Node> updated;
      if (key == 'docs') {
        updated = _treeViewController!.updateNode(
            key,
            node.copyWith(
              expanded: expanded,
              icon: expanded ? Icons.folder_open : Icons.folder,
            ));
      } else {
        updated = _treeViewController!
            .updateNode(key, node.copyWith(expanded: expanded));
      }
      setState(() {
        _treeViewController = _treeViewController!.copyWith(children: updated);
      });
    }
  }
}
