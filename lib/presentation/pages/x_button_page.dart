import 'package:essential_ui_kit/essential_ui_kit.dart';
import 'package:flutter/material.dart';

class XButtonPage extends StatelessWidget {
  const XButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const XText(
          'XButton',
          textType: TextType.headLine5,
        ),
      ),
      body: ListView(
        children: [
          XButton(
            text: 'Button',
            onPressed: () {},
          ),
          XButton.outLined(
            text: 'OutLined Button',
            color: Colors.green,
            onTap: () {},
          ),
          XButton(
            text: 'button with arrow',
            showRightArrow: true,
            onPressed: () {},
          ),
          XButton(
            color: Colors.amber,
            text: 'Custom Color button',
            onPressed: () {},
          ),
          XButton(
            textColor: Colors.red,
            text: 'Custom Text Color button',
            onPressed: () {},
          ),
          XButton(
            color: Colors.red,
            text: 'Button with zero elevation',
            textColor: Colors.white,
            elevation: 0,
            onPressed: () {},
          ),
          XButton(
            color: Colors.redAccent,
            text: 'Button with border radius',
            borderRadius: 20,
            textColor: Colors.white,
            onPressed: () {},
          ),
          XButton(
            color: Colors.redAccent,
            text: 'Button with text type',
            textType: TextType.subtitle1,
            textColor: Colors.white,
            onPressed: () {},
          ),
          XButton(
            width: 200,
            color: Colors.redAccent,
            text: 'custom width',
            textType: TextType.headLine6,
            textColor: Colors.white,
            onPressed: () {},
          ),
          XButton(
            color: Colors.redAccent,
            text: 'Button with padding',
            padding: const EdgeInsets.all(25),
            textColor: Colors.white,
            onPressed: () {},
          ),
          XButton(
            color: Colors.redAccent,
            text: 'Button with margin',
            margin: const EdgeInsets.all(35),
            textColor: Colors.white,
            onPressed: () {},
          ),
          XButton(
            text: '',
            color: Colors.black,
            customWidget: Row(
              children: const [
                Icon(
                  Icons.print,
                  color: Colors.redAccent,
                ),
                XText(
                  'Button with print icon',
                  color: Colors.redAccent,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                )
              ],
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  static String code = r'''
   XButton(
            text: 'Button',
            onPressed: () {},
          ),
          XButton.outLined(
            text: 'OutLined Button',
            color: Colors.green,
            onTap: () {},
          ),
          XButton(
            text: 'button with arrow',
            showRightArrow: true,
            onPressed: () {},
          ),
          XButton(
            color: Colors.amber,
            text: 'Custom Color button',
            onPressed: () {},
          ),
          XButton(
            textColor: Colors.red,
            text: 'Custom Text Color button',
            onPressed: () {},
          ),
          XButton(
            color: Colors.red,
            text: 'Button with zero elevation',
            textColor: Colors.white,
            elevation: 0,
            onPressed: () {},
          ),
          XButton(
            color: Colors.redAccent,
            text: 'Button with border radius',
            borderRadius: 20,
            textColor: Colors.white,
            onPressed: () {},
          ),
          XButton(
            color: Colors.redAccent,
            text: 'Button with text type',
            textType: TextType.subtitle1,
            textColor: Colors.white,
            onPressed: () {},
          ),
          XButton(
            width: 200,
            color: Colors.redAccent,
            text: 'custom width',
            textType: TextType.headLine6,
            textColor: Colors.white,
            onPressed: () {},
          ),
          XButton(
            color: Colors.redAccent,
            text: 'Button with padding',
            padding: const EdgeInsets.all(25),
            textColor: Colors.white,
            onPressed: () {},
          ),
          XButton(
            color: Colors.redAccent,
            text: 'Button with margin',
            margin: const EdgeInsets.all(35),
            textColor: Colors.white,
            onPressed: () {},
          ),
          XButton(
            text: '',
            color: Colors.black,
            customWidget: Row(
              children: const [
                Icon(
                  Icons.print,
                  color: Colors.redAccent,
                ),
                XText(
                  'Button with print icon',
                  color: Colors.redAccent,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                )
              ],
            ),
            onPressed: () {},
          ),
          ''';
}
