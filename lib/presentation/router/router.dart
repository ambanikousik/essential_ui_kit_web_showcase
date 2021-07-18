import 'package:auto_route/auto_route.dart';
import 'package:essential_ui_kit_web_showcase/presentation/pages/home_page.dart';
import 'package:essential_ui_kit_web_showcase/presentation/dashboard_page.dart';
import 'package:essential_ui_kit_web_showcase/presentation/pages/x_button_page.dart';
import 'package:essential_ui_kit_web_showcase/presentation/pages/x_text_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: DashBoardPage, initial: true, children: [
      AutoRoute(page: HomePage, initial: true),
      AutoRoute(page: XTextPage),
      AutoRoute(page: XButtonPage),
    ]),
  ],
)
class $AppRouter {}
