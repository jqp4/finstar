import 'package:finstar_test_task/src/core/_barrel.dart';
import 'package:finstar_test_task/src/foundation/_barrel.dart';

abstract class LoanValidators {
  /// Returns error text for invalid data and null if all is well
  static String? amountValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'The amount is empty';
    }

    final intValue = int.tryParse(value.removeAllSpaces());
    if (intValue == null) {
      return 'The amount must be an integer';
    }

    const range = LoanFormConstants.amount;
    if (intValue < range.minValue || intValue > range.maxValue) {
      final min = range.minValue.toString().spaceSeparateNumbers();
      final max = range.maxValue.toString().spaceSeparateNumbers();
      return 'The loan amount should be in the range of $min to $max.';
    }

    return null;
  }

  /// Returns error text for invalid data and null if all is well
  static String? interestRateValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'The interest rate is empty';
    }

    final doubleValue = double.tryParse(value);
    if (doubleValue == null) {
      return 'The interest rate should be a floating point number';
    }

    const range = LoanFormConstants.interestRate;
    if (doubleValue < range.minValue || doubleValue > range.maxValue) {
      return 'The interest rate of the loan should be in the range of ${range.minValue} to ${range.maxValue}.';
    }

    return null;
  }

  /// Returns error text for invalid data and null if all is well
  static String? termInMonthsValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'The term is empty';
    }

    final intValue = int.tryParse(value);
    if (intValue == null) {
      return 'The term must be an integer';
    }

    const range = LoanFormConstants.termInMonths;
    if (intValue < range.minValue || intValue > range.maxValue) {
      return 'The loan term should be in the range of ${range.minValue} to ${range.maxValue}.';
    }

    return null;
  }
}
