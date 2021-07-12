import 'package:auto_route/auto_route.dart';
import 'package:essential_ui_kit_web_showcase/presentation/pages/counter_page.dart';
import 'package:essential_ui_kit_web_showcase/presentation/pages/home_page.dart';
import 'package:essential_ui_kit_web_showcase/presentation/pages/dashboard_page.dart';
import 'package:essential_ui_kit_web_showcase/presentation/pages/text_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: DashBoardPage, initial: true, children: [
      AutoRoute(page: HomePage),
      AutoRoute(page: CounterPage),
      AutoRoute(page: TextPage),
    ]),
  ],
)
class $AppRouter {}
