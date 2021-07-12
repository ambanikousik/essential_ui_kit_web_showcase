import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(20),
            color: Colors.redAccent,
            child: const Text(
              'This is a customized widget',
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
      ),
    );
  }
}
