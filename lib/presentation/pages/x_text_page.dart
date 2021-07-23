import 'package:essential_ui_kit/essential_ui_kit.dart';
import 'package:flutter/material.dart';

class XTextPage extends StatelessWidget {
  const XTextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const XText(
          'XText',
          color: Colors.white,
          textType: TextType.headLine5,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: const [
            SizedBox(
              height: 10,
            ),
            XText(
              'Blue text',
              color: Colors.blue,
            ),
            XText(
              'Font Size: 35',
              fontSize: 35,
            ),
            XText(
              'Font Weight: w800',
              fontWeight: FontWeight.w800,
            ),
            XText(
              'Italic',
              isItalic: true,
            ),
            XText(
              'This is a multi line text with line limit 3: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec suscipit interdum imperdiet. Suspendisse nisi tortor, sollicitudin nec enim sagittis, volutpat finibus lacus. Sed tristique mattis justo in maximus. Integer convallis risus a vestibulum ultrices. Aenean vitae odio felis. Curabitur leo arcu, convallis ut pulvinar et, mattis vitae felis. In malesuada libero quis faucibus fringilla. Morbi sit amet erat sodales, fermentum purus eget, posuere risus. Proin eget velit ac felis varius sagittis sit amet ut velit. Pellentesque auctor vestibulum ex a pellentesque.',
              maxLine: 3,
            ),
            XText(
              "Text with padding",
              padding: EdgeInsets.all(20),
            ),
            Divider(),
            XText(
              'HeadLine1',
              textType: TextType.headLine1,
            ),
            XText(
              'HeadLine2',
              textType: TextType.headLine2,
            ),
            XText(
              'HeadLine3',
              textType: TextType.headLine3,
            ),
            XText(
              'HeadLine4',
              textType: TextType.headLine4,
            ),
            XText(
              'HeadLine5',
              textType: TextType.headLine5,
            ),
            XText(
              'HeadLine6',
              textType: TextType.headLine6,
            ),
            XText(
              'Subtitle1',
              textType: TextType.subtitle1,
            ),
            XText(
              'Subtitle2',
              textType: TextType.subtitle2,
            ),
            XText(
              'Body1',
              textType: TextType.body1,
            ),
            XText(
              'Body2',
              textType: TextType.body2,
            ),
          ],
        ),
      ),
    );
  }

  static String code = r'''
      XText(
              'Blue text',
              color: Colors.blue,
            ),
            XText(
              'Font Size: 35',
              fontSize: 35,
            ),
            XText(
              'Font Weight: w800',
              fontWeight: FontWeight.w800,
            ),
            XText(
              'Italic',
              isItalic: true,
            ),
            XText(
              'This is a multi line text with line limit 3: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec suscipit interdum imperdiet. Suspendisse nisi tortor, sollicitudin nec enim sagittis, volutpat finibus lacus. Sed tristique mattis justo in maximus. Integer convallis risus a vestibulum ultrices. Aenean vitae odio felis. Curabitur leo arcu, convallis ut pulvinar et, mattis vitae felis. In malesuada libero quis faucibus fringilla. Morbi sit amet erat sodales, fermentum purus eget, posuere risus. Proin eget velit ac felis varius sagittis sit amet ut velit. Pellentesque auctor vestibulum ex a pellentesque.',
              maxLine: 3,
            ),
            XText(
              "Text with padding",
              padding: EdgeInsets.all(20),
            ),
            Divider(),
            XText(
              'HeadLine1',
              textType: TextType.headLine1,
            ),
            XText(
              'HeadLine2',
              textType: TextType.headLine2,
            ),
            XText(
              'HeadLine3',
              textType: TextType.headLine3,
            ),
            XText(
              'HeadLine4',
              textType: TextType.headLine4,
            ),
            XText(
              'HeadLine5',
              textType: TextType.headLine5,
            ),
            XText(
              'HeadLine6',
              textType: TextType.headLine6,
            ),
            XText(
              'Subtitle1',
              textType: TextType.subtitle1,
            ),
            XText(
              'Subtitle2',
              textType: TextType.subtitle2,
            ),
            XText(
              'Body1',
              textType: TextType.body1,
            ),
            XText(
              'Body2',
              textType: TextType.body2,
            ),
  ''';
}
