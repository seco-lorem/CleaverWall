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
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import 'routesBarrel.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomeView(),
      );
    },
    OptionsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.OptionsView(),
      );
    },
    AnalysisRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.AnalysisView(),
      );
    },
    PreviousResultsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.PreviousResultsView(),
      );
    },
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i2.RouteConfig(
          OptionsRoute.name,
          path: '/options-view',
        ),
        _i2.RouteConfig(
          AnalysisRoute.name,
          path: '/analysis-view',
        ),
        _i2.RouteConfig(
          PreviousResultsRoute.name,
          path: '/previous-results-view',
        ),
      ];
}

/// generated route for
/// [_i1.HomeView]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.OptionsView]
class OptionsRoute extends _i2.PageRouteInfo<void> {
  const OptionsRoute()
      : super(
          OptionsRoute.name,
          path: '/options-view',
        );

  static const String name = 'OptionsRoute';
}

/// generated route for
/// [_i1.AnalysisView]
class AnalysisRoute extends _i2.PageRouteInfo<void> {
  const AnalysisRoute()
      : super(
          AnalysisRoute.name,
          path: '/analysis-view',
        );

  static const String name = 'AnalysisRoute';
}

/// generated route for
/// [_i1.PreviousResultsView]
class PreviousResultsRoute extends _i2.PageRouteInfo<void> {
  const PreviousResultsRoute()
      : super(
          PreviousResultsRoute.name,
          path: '/previous-results-view',
        );

  static const String name = 'PreviousResultsRoute';
}