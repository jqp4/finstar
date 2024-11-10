import 'package:auto_route/auto_route.dart';
import 'package:finstar_test_task/src/core/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_history/presentation/_barrel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoanHistoryPage extends StatelessWidget {
  const LoanHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoanHistoryBloc>(
      create: (_) => LoanHistoryBloc()..add(const LoanHistoryEvent.read()),
      child: BlocConsumer<LoanHistoryBloc, LoanHistoryState>(
        listener: (context, state) {
          state.maybeWhen(
            pending: () => context.showLoadingOverlay(),
            orElse: () => context.hideLoadingOverlay(),
          );
        },
        builder: (context, state) {
          final maybeFailureDescription = state.whenOrNull(
            failure: (failureDescription) => failureDescription,
          );

          return LoanHistoryListPage(
            maybeFailureDescription: maybeFailureDescription,
          );
        },
      ),
    );
  }
}
