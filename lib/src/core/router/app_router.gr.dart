// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [LoanCalculatorPage]
class LoanCalculatorRoute extends PageRouteInfo<LoanCalculatorRouteArgs> {
  LoanCalculatorRoute({
    LoanForm? initialLoanForm,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          LoanCalculatorRoute.name,
          args: LoanCalculatorRouteArgs(
            initialLoanForm: initialLoanForm,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'LoanCalculatorRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoanCalculatorRouteArgs>(
          orElse: () => const LoanCalculatorRouteArgs());
      return LoanCalculatorPage(
        initialLoanForm: args.initialLoanForm,
        key: args.key,
      );
    },
  );
}

class LoanCalculatorRouteArgs {
  const LoanCalculatorRouteArgs({
    this.initialLoanForm,
    this.key,
  });

  final LoanForm? initialLoanForm;

  final Key? key;

  @override
  String toString() {
    return 'LoanCalculatorRouteArgs{initialLoanForm: $initialLoanForm, key: $key}';
  }
}

/// generated route for
/// [LoanHistoryPage]
class LoanHistoryRoute extends PageRouteInfo<void> {
  const LoanHistoryRoute({List<PageRouteInfo>? children})
      : super(
          LoanHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoanHistoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoanHistoryPage();
    },
  );
}
