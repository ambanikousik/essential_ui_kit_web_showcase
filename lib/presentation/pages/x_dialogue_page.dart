import 'package:essential_ui_kit/essential_ui_kit.dart';
import 'package:flutter/material.dart';

class XDialoguePage extends StatelessWidget {
  const XDialoguePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String lorem =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere nulla nec orci imperdiet dapibus. Duis aliquet enim nec accumsan gravida. Quisque metus felis, rhoncus quis ipsum vel, ultrices sodales leo.";
    return Scaffold(
      appBar: AppBar(
        title: const XText(
          "XDialogue",
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          XButton(
            text: "show dialogue",
            color: Colors.green,
            onPressed: () {
              // ScaffoldMessenger.of(context).showSnackBar.
              showDialog(
                  context: context,
                  builder: (context) => const XDialogue(
                      title: 'Congratulations', details: lorem));
              XSnackBar(context).loading();
            },
          )
        ],
      ),
    );
  }

  static String code = "";
}
