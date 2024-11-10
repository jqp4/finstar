import 'dart:async';

import 'package:finstar_test_task/src/core/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_shared/domain/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_shared/infra/_barrel.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@singleton
class LocalLoanFormsStorage {
  late final Isar _isar;

  Future<void> init() async {
    _isar = await inject<IsarManager>().openIsar(
      IsarNames.loanForms,
      LoanFormCollectionSchema,
    );
  }

  @disposeMethod
  Future<void> dispose() async {
    await inject<IsarManager>().closeIsar(_isar);
  }

  Future<Id> addLoanForm(LoanForm form) async {
    return _isar.writeTxn(() => _isar.loanFormCollections.put(form.toCollection()));
  }

  Future<bool> deleteLoanForm(Id id) async {
    return _isar.writeTxn(() => _isar.loanFormCollections.delete(id));
  }

  Future<List<LoanFormCollection>> readAllLoanForms() async {
    return _isar.txn(() => _isar.loanFormCollections.where().findAll());
  }
}
