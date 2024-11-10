import 'package:finstar_test_task/src/foundation/_barrel.dart';
import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final color = context.theme.colorScheme.onSurfaceVariant;

    return Divider(
      color: color,
      height: 8.0,
    );
  }
}
