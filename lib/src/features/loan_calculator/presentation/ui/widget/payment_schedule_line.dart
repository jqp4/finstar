import 'package:finstar_test_task/src/features/loan_calculator/domain/_barrel.dart';
import 'package:finstar_test_task/src/foundation/_barrel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentScheduleLineWidget extends StatelessWidget {
  const PaymentScheduleLineWidget({
    required this.line,
    super.key,
  });

  final SinglePaymentScheduleLine line;

  @override
  Widget build(BuildContext context) {
    return PaymentScheduleRowWidget(
      textStyle: context.theme.textTheme.bodyMedium,
      values: [
        DateFormat('MMM. yyyy').format(line.paymentDateTime),
        line.loanResidualAmount.toString().spaceSeparateNumbers(),
        line.interestPaymentAmount.toString().spaceSeparateNumbers(),
        line.bodyPaymentAmount.toString().spaceSeparateNumbers(),
        line.paymentAmount.toString().spaceSeparateNumbers(),
      ],
    );
  }
}

class PaymentScheduleHeaderWidget extends StatelessWidget {
  const PaymentScheduleHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PaymentScheduleRowWidget(
      textStyle: context.theme.textTheme.bodyMedium?.copyWith(
        fontWeight: FontWeight.w600,
      ),
      values: const [
        'Date',
        'Residual amount',
        'Interest payment',
        'Body payment',
        'Payment',
      ],
    );
  }
}

class PaymentScheduleRowWidget extends StatelessWidget {
  const PaymentScheduleRowWidget({
    required this.values,
    required this.textStyle,
    super.key,
  });

  final List<String> values;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List<Widget>.generate(
        values.length,
        (index) => Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.only(left: index > 0 ? 12 : 0),
            child: Text(
              values[index],
              style: textStyle,
            ),
          ),
        ),
      ),
    );
  }
}
