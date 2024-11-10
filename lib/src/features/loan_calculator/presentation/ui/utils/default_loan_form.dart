import 'package:finstar_test_task/src/core/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_shared/domain/_barrel.dart';

final class DefaultLoanForm extends LoanForm {
  DefaultLoanForm()
      : super(
          amount: LoanFormConstants.amount.defaultValue,
          interestRate: LoanFormConstants.interestRate.defaultValue,
          termInMonths: LoanFormConstants.termInMonths.defaultValue,
          paymentType: PaymentType.annuity,
        );
}
