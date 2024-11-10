import 'package:finstar_test_task/src/core/uikit/gap/gap.dart';
import 'package:finstar_test_task/src/features/loan_calculator/domain/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_calculator/presentation/_barrel.dart';
import 'package:finstar_test_task/src/foundation/_barrel.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentBarChartWidget extends StatelessWidget {
  const PaymentBarChartWidget({
    required this.details,
    super.key,
  });

  final FullPaymentsDetails details;

  static const _interestPaymentLegend = ChartLegend('Interest payment', Colors.blue);
  static const _bodyPaymentLegend = ChartLegend('Body payment', Colors.purple);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Legends
          const ChartLegendsListWidget(
            legends: [
              _bodyPaymentLegend,
              _interestPaymentLegend,
            ],
          ),

          // Chart with left title
          const Gap.y(16),
          AspectRatio(
            aspectRatio: 2,
            child: Row(
              children: [
                // Left title
                LayoutBuilder(
                  builder: (context, constrains) {
                    return RotatedBox(
                      quarterTurns: -1,
                      child: SizedBox(
                        width: constrains.maxHeight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '0.00',
                              style: theme.textTheme.bodyMedium,
                            ),
                            Text(
                              (details.maxPaymentAmount / 1).customRound(2).toString().spaceSeparateNumbers(),
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),

                // Chart
                const Gap.x(6),
                Expanded(
                  child: BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.spaceBetween,
                      titlesData: const FlTitlesData(
                        leftTitles: AxisTitles(),
                        rightTitles: AxisTitles(),
                        topTitles: AxisTitles(),
                        bottomTitles: AxisTitles(),
                      ),
                      borderData: FlBorderData(show: false),
                      barTouchData: BarTouchData(enabled: false),
                      gridData: const FlGridData(show: false),
                      barGroups: _chartGroupDataList(),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Bottom title
          const Gap.y(6),
          Row(
            children: [
              const Gap.x(25),
              Text(
                DateFormat('MMM. yyyy').format(details.paymentSchedule.first.paymentDateTime),
                style: theme.textTheme.bodyMedium,
              ),
              const Spacer(),
              Text(
                DateFormat('MMM. yyyy').format(details.paymentSchedule.last.paymentDateTime),
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<BarChartGroupData> _chartGroupDataList() {
    final spaceBetweenGroups = details.maxPaymentAmount / 20;

    return List<BarChartGroupData>.generate(
      details.paymentSchedule.length,
      (index) => _chartGroupData(
        index,
        details.paymentSchedule[index].bodyPaymentAmount,
        details.paymentSchedule[index].interestPaymentAmount,
        spaceBetweenGroups,
      ),
    );
  }

  BarChartGroupData _chartGroupData(
    int index,
    double bodyPaymentAmount,
    double interestPaymentAmount,
    double space,
  ) {
    const barWidth = 8.0;

    return BarChartGroupData(
      x: index,
      groupVertically: true,
      barRods: [
        BarChartRodData(
          fromY: 0,
          toY: bodyPaymentAmount,
          color: _bodyPaymentLegend.color,
          width: barWidth,
        ),
        BarChartRodData(
          fromY: bodyPaymentAmount + space,
          toY: bodyPaymentAmount + space + interestPaymentAmount + space,
          color: _interestPaymentLegend.color,
          width: barWidth,
        ),
      ],
    );
  }
}
