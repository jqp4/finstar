import 'package:equatable/equatable.dart';

/// Line in the loan payment schedule
class SinglePaymentScheduleLine extends Equatable {
  const SinglePaymentScheduleLine({
    required this.paymentAmount,
    required this.paymentDateTime,
    required this.loanResidualAmount,
    required this.interestPaymentAmount,
    required this.bodyPaymentAmount,
  });

  /// Payment Date
  final DateTime paymentDateTime;

  /// Residual amount on the loan
  final double loanResidualAmount;

  /// Interest payment amount
  final double interestPaymentAmount;

  /// Amount of payment on the body of the loan
  final double bodyPaymentAmount;

  /// Payment amount
  final double paymentAmount;

  @override
  List<Object> get props {
    return [
      paymentAmount,
      paymentDateTime,
      loanResidualAmount,
      interestPaymentAmount,
      bodyPaymentAmount,
    ];
  }
}
