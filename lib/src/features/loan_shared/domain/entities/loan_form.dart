import 'package:equatable/equatable.dart';
import 'package:finstar_test_task/src/features/loan_shared/domain/entities/_barrel.dart';

class LoanForm extends Equatable {
  const LoanForm({
    required this.amount,
    required this.interestRate,
    required this.termInMonths,
    required this.paymentType,
  });

  /// Loan amount
  final int amount;

  /// Interest rate on a loan
  final double interestRate;

  /// Loan term in months
  final int termInMonths;

  /// Payment type: annuity / differentiated
  final PaymentType paymentType;

  LoanForm copyWith({
    int? amount,
    double? interestRate,
    int? termInMonths,
    PaymentType? paymentType,
  }) {
    return LoanForm(
      amount: amount ?? this.amount,
      interestRate: interestRate ?? this.interestRate,
      termInMonths: termInMonths ?? this.termInMonths,
      paymentType: paymentType ?? this.paymentType,
    );
  }

  @override
  List<Object> get props => [
        amount,
        interestRate,
        termInMonths,
        paymentType,
      ];
}
