import 'package:finstar_test_task/src/foundation/_barrel.dart';
import 'package:finstar_test_task/src/foundation/extensoins/context.dart';
import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    required this.labelText,
    required this.controller,
    this.onChanged,
    this.validator,
    super.key,
  });

  final String labelText;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return TextFormField(
      textAlign: TextAlign.start,
      style: theme.textTheme.bodyLarge,
      validator: validator,
      onChanged: onChanged,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: labelText,
        errorMaxLines: 3,
        labelStyle: theme.textTheme.titleMedium,
        enabledBorder: MyTextFieldOutlineInputBorder(
          color: theme.colorScheme.secondary,
        ),
        focusedBorder: MyTextFieldOutlineInputBorder(
          color: theme.colorScheme.primary,
        ),
        errorBorder: MyTextFieldOutlineInputBorder(
          color: theme.colorScheme.error,
        ),
        focusedErrorBorder: MyTextFieldOutlineInputBorder(
          color: theme.colorScheme.primary,
        ),
      ),
    );
  }
}

class MyTextFieldOutlineInputBorder extends OutlineInputBorder {
  MyTextFieldOutlineInputBorder({required Color color})
      : super(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: color),
        );
}
