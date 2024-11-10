import 'package:finstar_test_task/src/core/uikit/gap/gap.dart';
import 'package:finstar_test_task/src/foundation/_barrel.dart';
import 'package:flutter/material.dart';

class ChartLegendWidget extends StatelessWidget {
  const ChartLegendWidget({
    required this.name,
    required this.color,
    super.key,
  });

  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox.square(
          dimension: 12,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
          ),
        ),
        const Gap.x(6),
        Text(
          name,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}

class ChartLegendsListWidget extends StatelessWidget {
  const ChartLegendsListWidget({
    required this.legends,
    super.key,
  });

  final List<ChartLegend> legends;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      children: legends
          .map(
            (e) => ChartLegendWidget(
              name: e.name,
              color: e.color,
            ),
          )
          .toList(),
    );
  }
}

class ChartLegend {
  const ChartLegend(this.name, this.color);

  final String name;
  final Color color;
}
