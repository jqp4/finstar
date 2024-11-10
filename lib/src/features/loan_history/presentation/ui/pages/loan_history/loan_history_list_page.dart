import 'package:auto_route/auto_route.dart';
import 'package:finstar_test_task/src/core/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_history/presentation/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_shared/infra/_barrel.dart';
import 'package:finstar_test_task/src/foundation/_barrel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// List of saved forms
class LoanHistoryListPage extends StatefulWidget {
  const LoanHistoryListPage({
    this.maybeFailureDescription,
    super.key,
  });

  final String? maybeFailureDescription;

  @override
  State<LoanHistoryListPage> createState() => _LoanHistoryListPageState();
}

class _LoanHistoryListPageState extends State<LoanHistoryListPage> {
  late LoanHistoryBloc _bloc;
  late ThemeData _theme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _theme = context.theme;
    _bloc = context.watch<LoanHistoryBloc>();
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = _theme.colorScheme.surface;

    return Material(
      color: backgroundColor,
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: CustomScrollView(
          slivers: [
            // AppBar
            SliverAppBar(
              pinned: true,
              backgroundColor: backgroundColor,
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'History',
                  style: _theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            // Static part of the page
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              sliver: SliverToBoxAdapter(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      // Failure message, if any
                      if (widget.maybeFailureDescription != null) ...[
                        const Gap.y(24),
                        Text(
                          widget.maybeFailureDescription!,
                          style: _theme.textTheme.bodyMedium?.copyWith(
                            color: _theme.colorScheme.error,
                          ),
                        ),
                      ],

                      if (_bloc.forms.isEmpty) ...[
                        const Gap.y(24),
                        Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  'History is empty.',
                                  style: _theme.textTheme.bodyLarge,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),

            // History list
            ...List.generate(
              _bloc.forms.length,
              (index) => SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
                sliver: SliverToBoxAdapter(
                  child: LoanHistoryItemTile(
                    form: _bloc.forms[index],
                    onTilePressed: () {
                      context.router
                        ..popUntilRoot()
                        ..replace(LoanCalculatorRoute(
                          initialLoanForm: _bloc.forms[index].toRaw(),
                        ));
                    },
                    onDeleteButtonPressed: () {
                      _bloc.add(LoanHistoryEvent.delete(
                        _bloc.forms[index].storageId,
                      ));
                    },
                  ),
                ),
              ),
            ),

            const SliverGap.y(50),
          ],
        ),
      ),
    );
  }
}
