import 'package:dartz/dartz.dart' hide State;
import 'package:finstar_test_task/src/core/error/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_shared/domain/_barrel.dart';

abstract interface class ILoanRepository {
  Future<Either<Failure, int>> storeLoanForm(LoanForm form);

  Future<Either<Failure, List<StoredLoanForm>>> readAllLoanForms();

  Future<Either<Failure, bool>> deleteLoanForm(int id);
}
