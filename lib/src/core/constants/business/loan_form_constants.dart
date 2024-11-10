final class LoanFormValueConstants<T> {
  const LoanFormValueConstants({
    required this.minValue,
    required this.maxValue,
    required this.defaultValue,
  });

  final T minValue;
  final T maxValue;
  final T defaultValue;
}

abstract class LoanFormConstants {
  static const amount = LoanFormValueConstants<int>(
    minValue: 1000,
    maxValue: 10000000000,
    defaultValue: 1000000,
  );

  static const interestRate = LoanFormValueConstants<double>(
    minValue: 0.1,
    maxValue: 99.9,
    defaultValue: 12.5,
  );

  static const termInMonths = LoanFormValueConstants<int>(
    minValue: 2,
    maxValue: 360,
    defaultValue: 24,
  );
}
