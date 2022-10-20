import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:auto_route_test/child1_page.dart';
import 'package:auto_route_test/child2_1_page.dart';
import 'package:auto_route_test/child2_page.dart';
import 'package:auto_route_test/dashboard_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: DashboardPage, deferredLoading: true, path: '/', children: [
      AutoRoute(
          page: Child1Page, name: 'Child1Tab', path: 'child1', initial: true),
      AutoRoute(
          page: EmptyRouterPage,
          path: 'child2',
          name: 'Child2Tab',
          deferredLoading: true,
          maintainState: true,
          children: [
            AutoRoute(page: Child2Page, path: ''),
            AutoRoute(page: Child21Page, path: 'child21'),
          ]),
    ]),
  ],
)
class $AppRouter {}
