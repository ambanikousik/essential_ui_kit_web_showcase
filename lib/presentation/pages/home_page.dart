import 'package:essential_ui_kit_web_showcase/application/page_controller.dart';
import 'package:essential_ui_kit_web_showcase/domain/widget_state/widget_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter_page.dart';
import 'x_text_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderListener<WidgetState>(
      provider: pageNotifier,
      onChange: (context, nextPage) {
        Widget page = nextPage.map(
            counter: (counter) => const CounterPage(title: 'title'),
            general: (general) => const XTextPage());
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                  child: const Text('text'),
                  onPressed: () {
                    context.read(pageNotifier.notifier).toText();
                    // final state = watch(page);
                  }),
              const SizedBox(
                height: 50,
              ),
              TextButton(child: const Text('counter'), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
