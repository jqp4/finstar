import 'package:finstar_test_task/src/features/loan_shared/domain/_barrel.dart';
import 'package:isar/isar.dart';

part 'loan_form_collection.g.dart';

@collection
class LoanFormCollection {
  Id id = Isar.autoIncrement;

  late final int amount;
  late final double interestRate;
  late final int termInMonths;

  @enumerated
  late final PaymentType paymentType;
}

extension LoanFormCollectionY on LoanFormCollection {
  StoredLoanForm toEntity() {
    return StoredLoanForm(
      amount: amount,
      interestRate: interestRate,
      termInMonths: termInMonths,
      paymentType: paymentType,
      storageId: id,
    );
  }
}

extension StoredLoanFormY on StoredLoanForm {
  LoanForm toRaw() {
    return LoanForm(
      amount: amount,
      interestRate: interestRate,
      termInMonths: termInMonths,
      paymentType: paymentType,
    );
  }
}

extension LoanFormY on LoanForm {
  LoanFormCollection toCollection() {
    return LoanFormCollection()
      ..amount = amount
      ..interestRate = interestRate
      ..termInMonths = termInMonths
      ..paymentType = paymentType;
  }
}
