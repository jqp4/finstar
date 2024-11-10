import 'package:equatable/equatable.dart';
import 'package:finstar_test_task/src/features/loan_calculator/domain/entities/_barrel.dart';

/// Full details of payments
class FullPaymentsDetails extends Equatable {
  const FullPaymentsDetails({
    required this.totalOverpayment,
    required this.minPaymentAmount,
    required this.maxPaymentAmount,
    required this.paymentSchedule,
  });

  final double totalOverpayment;

  final double minPaymentAmount;

  final double maxPaymentAmount;

  final List<SinglePaymentScheduleLine> paymentSchedule;

  @override
  List<Object> get props => [
        totalOverpayment,
        minPaymentAmount,
        maxPaymentAmount,
        paymentSchedule,
      ];
}
