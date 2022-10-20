import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/dashboard_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: DashboardPage, initial: true),
  ],
)
class $AppRouter {}
