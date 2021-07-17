import 'package:auto_route/auto_route.dart';
import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:device_frame/device_frame.dart';
import 'package:essential_ui_kit/essential_ui_kit.dart';
import 'package:essential_ui_kit_web_showcase/presentation/router/router.gr.dart';
import 'package:essential_ui_kit_web_showcase/presentation/widget/x_tree_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  final TextEditingController controller = TextEditingController();
  DeviceInfo deviceInfo = Devices.ios.iPhone11ProMax;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: LayoutBuilder(builder: (context, constraints) {
                return constraints.maxWidth > 150
                    ? const XTreeViewPage()
                    : const SizedBox.shrink();
              })),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: DeviceFrame(
                screen: const VirtualKeyboard(child: AutoRouter()),
                device: deviceInfo,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Container(
                  height: 300,
                  margin: const EdgeInsets.only(bottom: 10, top: 10, right: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xff30A782),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      XDropdown<DeviceInfo>(
                        controller: controller,
                        displayName: (data) => data.name,
                        hint: 'Select device',
                        onSelected: (DeviceInfo? value) {
                          setState(() {
                            deviceInfo = value!;
                          });
                        },
                        options: Devices.ios.all + Devices.android.all,
                      ),
                      XDropdown<String>(
                        controller: controller,
                        displayName: (data) => data,
                        hint: 'Go to page',
                        onSelected: (Object? value) {
                          if (value == 'text') {
                            AutoRouter.innerRouterOf(
                                    context, DashBoardRoute.name)!
                                .push(const TextRoute());
                          } else if (value == 'counter') {
                            AutoRouter.innerRouterOf(
                                    context, DashBoardRoute.name)!
                                .push(CounterRoute(title: 'counter'));
                          }
                        },
                        options: const [
                          'text',
                          'counter',
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(bottom: 10, right: 10),
                    decoration: BoxDecoration(
                        color: const Color(0xff14121F),
                        borderRadius: BorderRadius.circular(30)),
                    child: DartCodeViewer(
                      r'''
                
                
                          
                 Container(
                      padding: const EdgeInsets.all(20),
                      color: Colors.redAccent,
                      child: const Text(
                        'This is a customized widget',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ''',
                      backgroundColor: Colors.transparent,
                      // backgroundColor: const Color(0xff222339),
                      classStyle: GoogleFonts.lato(color: Colors.yellow[600]),
                      numberStyle: GoogleFonts.lato(color: Colors.orange),
                      keywordStyle: GoogleFonts.lato(color: Colors.purple),
                      baseStyle: GoogleFonts.lato(),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
