import 'package:auto_route/auto_route.dart';
import 'package:finstar_test_task/src/features/_barrel.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Modal|Screen|Dialog|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoanCalculatorRoute.page, path: '/', initial: true),
        AutoRoute(page: LoanHistoryRoute.page, path: '/history'),
      ];
}
