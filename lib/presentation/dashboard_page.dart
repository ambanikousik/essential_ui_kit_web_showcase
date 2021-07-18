import 'package:auto_route/auto_route.dart';
import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:device_frame/device_frame.dart';
import 'package:essential_ui_kit/essential_ui_kit.dart';
import 'package:essential_ui_kit_web_showcase/application/device_controller.dart';
import 'package:essential_ui_kit_web_showcase/application/route_controller.dart';
import 'package:essential_ui_kit_web_showcase/domain/node_to_route/node_to_route.dart';
import 'package:essential_ui_kit_web_showcase/presentation/router/router.gr.dart';
import 'package:essential_ui_kit_web_showcase/presentation/widget/constants.dart';
import 'package:essential_ui_kit_web_showcase/presentation/widget/x_tree_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardPage extends StatelessWidget {
  DashBoardPage({Key? key}) : super(key: key);

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ProviderListener<NodeToRoute>(
      provider: routeNotifier,
      onChange: (context, nextPage) {
        AutoRouter.innerRouterOf(context, DashBoardRoute.name)!
            .replace(nextPage.route);
      },
      child: Scaffold(
        backgroundColor: const Color(0xff262932),
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
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff2b2d37),
                    ),
                  ),
                  Consumer(
                    builder: (context, ref, child) {
                      final state = ref(deviceNotifier);

                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: DeviceFrame(
                          isFrameVisible: state.showFrame,
                          screen: const VirtualKeyboard(child: AutoRouter()),
                          device: state.device,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Container(
                    height: 300,
                    margin:
                        const EdgeInsets.only(bottom: 10, top: 10, right: 10),
                    padding: const EdgeInsets.all(10),
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
                    child: Column(
                      children: [
                        XDropdown<DeviceInfo>(
                          controller: controller
                            ..text = Devices.ios.iPhone11ProMax.name,
                          displayName: (data) => data.name,
                          hint: 'Select device',
                          onSelected: (DeviceInfo? value) {
                            context
                                .read(deviceNotifier.notifier)
                                .changeDevice(value!);
                          },
                          options: Devices.ios.all + Devices.android.all,
                        ),
                        XSwitch(
                            initValue: true,
                            onChanged: (value) {
                              context
                                  .read(deviceNotifier.notifier)
                                  .changeFrameVisibility(value);
                            },
                            title: 'Show device frame?')
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.only(bottom: 10, right: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xff14121F),
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
                      child: Consumer(builder: (context, ref, _) {
                        final state = ref(routeNotifier);

                        return DartCodeViewer(state.code,
                            backgroundColor: Colors.transparent,
                            classStyle: GoogleFonts.lato(color: Colors.lime),
                            numberStyle: GoogleFonts.lato(color: Colors.orange),
                            keywordStyle:
                                GoogleFonts.lato(color: Colors.purple),
                            punctuationStyle:
                                GoogleFonts.lato(color: Colors.blue),
                            baseStyle: GoogleFonts.lato(color: Colors.grey));
                      }),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
