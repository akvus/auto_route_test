// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:auto_route/empty_router_widgets.dart' deferred as _i3;
import 'package:flutter/material.dart' as _i7;

import 'child1_page.dart' as _i2;
import 'child2_1_page.dart' as _i5;
import 'child2_page.dart' as _i4;
import 'dashboard_page.dart' deferred as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.DashboardPage(),
        ),
      );
    },
    Child1Tab.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.Child1Page(),
      );
    },
    Child2Tab.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.EmptyRouterPage(),
        ),
      );
    },
    Child2Route.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.Child2Page(),
      );
    },
    Child21Route.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.Child21Page(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          DashboardRoute.name,
          path: '/',
          deferredLoading: true,
          children: [
            _i6.RouteConfig(
              '#redirect',
              path: '',
              parent: DashboardRoute.name,
              redirectTo: 'child1',
              fullMatch: true,
            ),
            _i6.RouteConfig(
              Child1Tab.name,
              path: 'child1',
              parent: DashboardRoute.name,
            ),
            _i6.RouteConfig(
              Child2Tab.name,
              path: 'child2',
              parent: DashboardRoute.name,
              deferredLoading: true,
              children: [
                _i6.RouteConfig(
                  Child2Route.name,
                  path: '',
                  parent: Child2Tab.name,
                ),
                _i6.RouteConfig(
                  Child21Route.name,
                  path: 'child21',
                  parent: Child2Tab.name,
                ),
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i6.PageRouteInfo<void> {
  const DashboardRoute({List<_i6.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i2.Child1Page]
class Child1Tab extends _i6.PageRouteInfo<void> {
  const Child1Tab()
      : super(
          Child1Tab.name,
          path: 'child1',
        );

  static const String name = 'Child1Tab';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class Child2Tab extends _i6.PageRouteInfo<void> {
  const Child2Tab({List<_i6.PageRouteInfo>? children})
      : super(
          Child2Tab.name,
          path: 'child2',
          initialChildren: children,
        );

  static const String name = 'Child2Tab';
}

/// generated route for
/// [_i4.Child2Page]
class Child2Route extends _i6.PageRouteInfo<void> {
  const Child2Route()
      : super(
          Child2Route.name,
          path: '',
        );

  static const String name = 'Child2Route';
}

/// generated route for
/// [_i5.Child21Page]
class Child21Route extends _i6.PageRouteInfo<void> {
  const Child21Route()
      : super(
          Child21Route.name,
          path: 'child21',
        );

  static const String name = 'Child21Route';
}
