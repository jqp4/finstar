import 'package:finstar_test_task/src/features/loan_shared/domain/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_shared/infra/_barrel.dart';
import 'package:isar/isar.dart';

abstract interface class ILoanLocalDataSource {
  /// Stores the [LoanForm] to the database.
  Future<Id> storeLoanForm(LoanForm form);

  /// Returns all forms stored in the database.
  Future<List<LoanFormCollection>> readAllLoanForms();

  /// Delete the [LoanForm] from the database.
  Future<bool> deleteLoanForm(int id);
}
