import 'package:finstar_test_task/src/core/_barrel.dart';
import 'package:finstar_test_task/src/foundation/_barrel.dart';
import 'package:flutter/material.dart';

class MySnackBar {
  MySnackBar.of(this.context);

  final BuildContext context;

  SnackBar create(
    String message, {
    Duration duration = const Duration(milliseconds: 2000),
  }) {
    final theme = context.theme;

    final backgroundColor = theme.colorScheme.surfaceContainerHigh;
    final foregroundColor = theme.colorScheme.onSurface;
    final shadowColor = Colors.black.withOpacity(0.3);

    return SnackBar(
      elevation: 0,
      duration: duration,
      backgroundColor: Colors.transparent,
      content: DecoratedBox(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              spreadRadius: 2.0,
              blurRadius: 8.0,
              offset: const Offset(2, 4),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    message,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: foregroundColor,
                    ),
                  ),
                ),
              ),
              SizedBox.square(
                dimension: 46,
                child: Center(
                  child: IconButton(
                    onPressed: context.hideSnackbar,
                    icon: Icon(
                      Icons.close_rounded,
                      color: foregroundColor,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
