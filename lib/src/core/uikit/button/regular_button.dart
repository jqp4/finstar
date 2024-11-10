import 'package:finstar_test_task/src/core/uikit/_barrel.dart';
import 'package:finstar_test_task/src/foundation/_barrel.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    required this.title,
    this.isExpanded = false,
    this.onPressed,
    super.key,
  });

  final String title;
  final VoidCallback? onPressed;

  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    final foregroundColor = theme.colorScheme.onPrimary;
    final backgroundColor = theme.colorScheme.primary;

    final textStyle = theme.textTheme.bodyLarge?.copyWith(
      fontWeight: FontWeight.w600,
      color: foregroundColor,
    );

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
      ),
      child: MyButtonContent(
        title: title,
        textStyle: textStyle,
        isExpanded: isExpanded,
      ),
    );
  }
}
