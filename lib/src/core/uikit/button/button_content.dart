import 'package:flutter/material.dart';

class MyButtonContent extends StatelessWidget {
  const MyButtonContent({
    required this.title,
    required this.textStyle,
    required this.isExpanded,
    super.key,
  });

  final String title;
  final TextStyle? textStyle;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: isExpanded
          ? Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: textStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )
          : Text(
              title,
              style: textStyle,
            ),
    );
  }
}
