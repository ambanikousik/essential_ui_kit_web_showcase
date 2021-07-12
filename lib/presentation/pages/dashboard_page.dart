import 'package:auto_route/auto_route.dart';
import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:device_frame/device_frame.dart';
import 'package:essential_ui_kit_web_showcase/presentation/router/router.gr.dart';
import 'package:essential_ui_kit_web_showcase/presentation/widget/x_tree_view.dart';
import 'package:flutter/material.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: constraints.maxWidth < 800
            ? AppBar(
                title: const Text('Essential Ui Kit'),
                centerTitle: true,
                elevation: 0,
                actions: [
                  IconButton(
                      onPressed: () {
                        // context.router.push(const XTreeViewRoute());
                        AutoRouter.innerRouterOf(context, DashBoardRoute.name)!
                            .push(const HomeRoute());
                      },
                      icon: const Icon(Icons.ac_unit_rounded)),
                  IconButton(
                      onPressed: () {
                        AutoRouter.innerRouterOf(context, DashBoardRoute.name)!
                            .push(CounterRoute(title: 'asda'));
                      },
                      icon: const Icon(Icons.pages))
                ],
              )
            : null,
        body: Row(
          children: [
            if (constraints.maxWidth > 800)
              const Expanded(flex: 2, child: XTreeViewPage()),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  if (constraints.maxWidth > 800)
                    Container(
                      width: double.infinity,
                      color: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      child: const Text(
                        'Select Device',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: DeviceFrame(
                        screen: const VirtualKeyboard(child: AutoRouter()),
                        device: Devices.ios.iPadMini,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (constraints.maxWidth > 800)
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: DartCodeViewer.light(
                    r'''


                    
 Container(
                padding: const EdgeInsets.all(20),
                color: Colors.redAccent,
                child: const Text(
                  'This is a customized widget',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
''',
                  ),
                ),
              )
          ],
        ),
      );
    });
  }
}
