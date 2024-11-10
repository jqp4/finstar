import 'package:finstar_test_task/src/features/loan_shared/domain/entities/_barrel.dart';

class StoredLoanForm extends LoanForm {
  const StoredLoanForm({
    required super.amount,
    required super.interestRate,
    required super.termInMonths,
    required super.paymentType,
    required this.storageId,
  });

  final int storageId;

  @override
  List<Object> get props => [
        amount,
        interestRate,
        termInMonths,
        paymentType,
        storageId,
      ];
}
