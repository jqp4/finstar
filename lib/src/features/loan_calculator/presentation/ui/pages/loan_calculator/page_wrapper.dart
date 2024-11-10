import 'package:auto_route/auto_route.dart';
import 'package:finstar_test_task/src/core/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_calculator/presentation/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_shared/domain/_barrel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoanCalculatorPage extends StatefulWidget {
  const LoanCalculatorPage({
    this.initialLoanForm,
    super.key,
  });

  final LoanForm? initialLoanForm;

  @override
  State<LoanCalculatorPage> createState() => _LoanCalculatorPageState();
}

class _LoanCalculatorPageState extends State<LoanCalculatorPage> {
  GlobalKey _blocProviderKey = GlobalKey();

  @override
  void didUpdateWidget(covariant LoanCalculatorPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    _blocProviderKey = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    final form = widget.initialLoanForm ?? DefaultLoanForm();

    return BlocProvider<LoanCalculatorBloc>(
      key: _blocProviderKey,
      create: (_) => LoanCalculatorBloc(form)..add(const LoanCalculatorEvent.calculatePayments()),
      child: BlocConsumer<LoanCalculatorBloc, LoanCalculatorState>(
        listener: (context, state) {
          state.maybeWhen(
            pending: () => context.showLoadingOverlay(),
            orElse: () => context.hideLoadingOverlay(),
          );

          state.whenOrNull(
            formSaved: () => context.showSnackbar('The form is saved in the vault.'),
          );
        },
        builder: (context, state) {
          final maybeFailureDescription = state.whenOrNull(
            failure: (failureDescription) => failureDescription,
          );

          return LoanCalculatorFormAndResultsPage(
            maybeFailureDescription: maybeFailureDescription,
          );
        },
      ),
    );
  }
}
