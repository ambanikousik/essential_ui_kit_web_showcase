import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_treeview/flutter_treeview.dart';

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
    _nodes = [
      const Node(
        label: 'XWidgets',
        key: 'widget_parent',
        icon: Icons.folder_open,
        children: [
          Node(
            label: 'XButtons',
            key: 'button_parent',
            icon: Icons.input,
            children: [
              Node(
                label: 'XRoundedButton',
                key: 'pd1',
              ),
              Node(
                label: 'XRegularButton',
                key: 'jh1',
                icon: Icons.input,
              ),
            ],
          ),
          Node(
            label: 'XText',
            key: 'xtext',
            icon: Icons.rounded_corner_rounded,
          ),
          Node(
            label: 'XDialogue',
            key: 'xdialogue',
            icon: Icons.rounded_corner_rounded,
          ),
          Node(
            label: 'XSnackbar',
            key: 'xnackbar',
            icon: Icons.rounded_corner_rounded,
          ),
        ],
      ),
    ];
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
      labelStyle: const TextStyle(
        fontSize: 16,
        letterSpacing: 0.3,
      ),
      parentLabelStyle: TextStyle(
        fontSize: 16,
        letterSpacing: 0.1,
        fontWeight: FontWeight.w800,
        color: Colors.blue.shade700,
      ),
      iconTheme: IconThemeData(
        size: 18,
        color: Colors.grey.shade800,
      ),
      colorScheme: Theme.of(context).colorScheme,
    );
    return Container(
      decoration: const BoxDecoration(
          border: Border(right: BorderSide(color: Colors.grey))),
      padding: const EdgeInsets.all(10),
      child: TreeView(
        controller: _treeViewController!,
        allowParentSelect: false,
        supportParentDoubleTap: false,
        onNodeTap: (key) {
          debugPrint('Selected: $key');
          debugPrint(
              'Selected node: ${_treeViewController!.selectedNode?.label}');
          setState(() {
            _treeViewController =
                _treeViewController!.copyWith(selectedKey: key);
          });
          debugPrint(
              'Selected node: ${_treeViewController!.selectedNode?.label}');
        },
        theme: _treeViewTheme,
      ),
    );
  }
}
