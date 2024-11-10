import 'package:auto_route/auto_route.dart';
import 'package:finstar_test_task/src/core/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_calculator/presentation/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_shared/domain/_barrel.dart';
import 'package:finstar_test_task/src/foundation/_barrel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoanCalculatorFormAndResultsPage extends StatefulWidget {
  const LoanCalculatorFormAndResultsPage({
    this.maybeFailureDescription,
    super.key,
  });

  final String? maybeFailureDescription;

  @override
  State<LoanCalculatorFormAndResultsPage> createState() => _LoanCalculatorFormAndResultsPageState();
}

class _LoanCalculatorFormAndResultsPageState extends State<LoanCalculatorFormAndResultsPage> {
  final TextEditingController _amountFormController = TextEditingController();
  final TextEditingController _interestRateFormController = TextEditingController();
  final TextEditingController _termInMonthsFormController = TextEditingController();

  late LoanCalculatorBloc _bloc;
  late ThemeData _theme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _theme = context.theme;
    _bloc = context.watch<LoanCalculatorBloc>();

    _amountFormController.text = _bloc.form.amount.toString().spaceSeparateNumbers();
    _interestRateFormController.text = _bloc.form.interestRate.toString().removeTrailingZeros();
    _termInMonthsFormController.text = _bloc.form.termInMonths.toString();
  }

  @override
  void dispose() {
    _amountFormController.dispose();
    _interestRateFormController.dispose();
    _termInMonthsFormController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = _theme.colorScheme.surface;

    return Material(
      color: backgroundColor,
      child: InkWell(
        onTap: _stopEditingTextForms,
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
                    'Loan Calculator',
                    style: _theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                actions: const [
                  ChangeThemeModeIconButton(),
                ],
              ),

              // Static part of the page
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                sliver: SliverToBoxAdapter(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        // Amount Form
                        MyTextFormField(
                          labelText: 'Amount',
                          controller: _amountFormController,
                          validator: LoanValidators.amountValidator,
                          onChanged: (value) {
                            if (LoanValidators.amountValidator(value) == null) {
                              final maybeIntValue = int.tryParse(value.removeAllSpaces());
                              _bloc.add(LoanCalculatorEvent.updateAmount(maybeIntValue));
                            }
                          },
                        ),

                        // Rate & Term Forms
                        const Gap.y(16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: MyTextFormField(
                                labelText: 'Interest rate',
                                controller: _interestRateFormController,
                                validator: LoanValidators.interestRateValidator,
                                onChanged: (value) {
                                  if (LoanValidators.interestRateValidator(value) == null) {
                                    final maybeDoubleValue = double.tryParse(value);
                                    _bloc.add(LoanCalculatorEvent.updateInterestRate(maybeDoubleValue));
                                  }
                                },
                              ),
                            ),
                            const Gap.x(16),
                            Flexible(
                              child: MyTextFormField(
                                labelText: 'Term in months',
                                controller: _termInMonthsFormController,
                                validator: LoanValidators.termInMonthsValidator,
                                onChanged: (value) {
                                  if (LoanValidators.termInMonthsValidator(value) == null) {
                                    final maybeIntValue = int.tryParse(value);
                                    _bloc.add(LoanCalculatorEvent.updateTermInMonths(maybeIntValue));
                                  }
                                },
                              ),
                            ),
                          ],
                        ),

                        // PaymentType Checkboxes
                        const Gap.y(8),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: CheckboxListTile(
                                value: _bloc.form.paymentType == PaymentType.annuity,
                                onChanged: (value) {
                                  _stopEditingTextForms();
                                  _bloc.add(LoanCalculatorEvent.updatePaymentType(
                                    value == true ? PaymentType.annuity : PaymentType.differentiated,
                                  ));
                                },
                                contentPadding: EdgeInsets.zero,
                                title: Text(
                                  'Annuity payment',
                                  style: _theme.textTheme.bodyMedium,
                                ),
                              ),
                            ),
                            const Gap.x(16),
                            Expanded(
                              flex: 1,
                              child: CheckboxListTile(
                                value: _bloc.form.paymentType == PaymentType.differentiated,
                                onChanged: (value) {
                                  _stopEditingTextForms();
                                  _bloc.add(LoanCalculatorEvent.updatePaymentType(
                                    value == true ? PaymentType.differentiated : PaymentType.annuity,
                                  ));
                                },
                                contentPadding: EdgeInsets.zero,
                                title: Text(
                                  'Differentiated payment',
                                  style: _theme.textTheme.bodyMedium,
                                ),
                              ),
                            ),
                          ],
                        ),

                        // Store buttons
                        const Gap.y(24),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: MyButton(
                                  title: 'Save',
                                  onPressed: () {
                                    _bloc.add(const LoanCalculatorEvent.saveForm());
                                  },
                                ),
                              ),
                              const Gap.x(36),
                              Expanded(
                                flex: 1,
                                child: MyButton(
                                  title: 'History',
                                  onPressed: () {
                                    context.router.push(const LoanHistoryRoute());
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),

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

                        // Loan calculations, if any
                        if (_bloc.paymentsDetails != null) ...[
                          // Summary
                          const Gap.y(36),
                          Text(
                            'Summary',
                            textAlign: TextAlign.center,
                            style: context.theme.textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const Gap.y(16),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Total overpayment: ${_bloc.paymentsDetails!.totalOverpayment.toString().spaceSeparateNumbers()}',
                                  style: _theme.textTheme.bodyLarge,
                                ),
                              ),
                            ],
                          ),

                          const Gap.y(4),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  switch (_bloc.form.paymentType) {
                                    PaymentType.annuity => 'Fixed monthly payment: '
                                        '${_bloc.paymentsDetails!.minPaymentAmount.toString().spaceSeparateNumbers()}',
                                    PaymentType.differentiated => 'Monthly payment: '
                                        'from ${_bloc.paymentsDetails!.minPaymentAmount.toString().spaceSeparateNumbers()}'
                                        ' to ${_bloc.paymentsDetails!.maxPaymentAmount.toString().spaceSeparateNumbers()}',
                                  },
                                  style: _theme.textTheme.bodyLarge,
                                ),
                              ),
                            ],
                          ),

                          // Payment bar chart
                          const Gap.y(36),
                          Text(
                            'Payment chart',
                            textAlign: TextAlign.center,
                            style: context.theme.textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const Gap.y(16),
                          PaymentBarChartWidget(details: _bloc.paymentsDetails!),

                          // Payment Schedule
                          const Gap.y(36),
                          Text(
                            'Payment Schedule',
                            textAlign: TextAlign.center,
                            style: context.theme.textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          // Payment Schedule Header
                          const Gap.y(16),
                          const PaymentScheduleHeaderWidget(),
                        ]
                      ],
                    ),
                  ),
                ),
              ),

              // Payment Schedule list
              if (_bloc.paymentsDetails != null) ...[
                ...List.generate(
                  _bloc.paymentsDetails!.paymentSchedule.length,
                  (index) => SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
                    sliver: SliverToBoxAdapter(
                      child: PaymentScheduleLineWidget(
                        line: _bloc.paymentsDetails!.paymentSchedule[index],
                      ),
                    ),
                  ),
                ),

                // Caution text
                SliverPadding(
                  padding: const EdgeInsets.all(16.0),
                  sliver: SliverToBoxAdapter(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '* The conditions for calculating the loan payment schedule may vary from bank to bank.',
                            style: _theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],

              const SliverGap.y(50),
            ],
          ),
        ),
      ),
    );
  }

  void _stopEditingTextForms() {
    if (LoanValidators.amountValidator(_amountFormController.text) != null) {
      _bloc.add(LoanCalculatorEvent.updateAmount(
        LoanFormConstants.amount.defaultValue,
      ));
    }

    if (LoanValidators.interestRateValidator(_interestRateFormController.text) != null) {
      _bloc.add(LoanCalculatorEvent.updateInterestRate(
        LoanFormConstants.interestRate.defaultValue,
      ));
    }

    if (LoanValidators.termInMonthsValidator(_termInMonthsFormController.text) != null) {
      _bloc.add(LoanCalculatorEvent.updateTermInMonths(
        LoanFormConstants.termInMonths.defaultValue,
      ));
    }

    // Убираем фокус с полей ввода
    context.unfocus();
  }
}
