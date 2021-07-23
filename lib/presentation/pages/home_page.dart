import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
                child: const Text('text'),
                onPressed: () {
                  // context.read(pageNotifier.notifier).toText();
                  // final state = watch(page);
                }),
            const SizedBox(
              height: 50,
            ),
            TextButton(child: const Text('counter'), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
