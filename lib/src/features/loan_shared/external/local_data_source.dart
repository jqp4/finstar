import 'package:finstar_test_task/src/core/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_shared/domain/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_shared/infra/_barrel.dart';

import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:logging/logging.dart';

@Singleton(as: ILoanLocalDataSource)
final class LoanLocalDataSourceImpl implements ILoanLocalDataSource {
  const LoanLocalDataSourceImpl();

  static final _log = Logger('LoanFormLocalDataSource');

  @override
  Future<Id> storeLoanForm(LoanForm form) async {
    final storage = inject<LocalLoanFormsStorage>();
    final id = await storage.addLoanForm(form);

    _log.finest("LoanForm with amount = '${form.amount}' has been saved with ID = $id");

    return id;
  }

  @override
  Future<List<LoanFormCollection>> readAllLoanForms() async {
    final storage = inject<LocalLoanFormsStorage>();
    final forms = await storage.readAllLoanForms();

    _log.finest('Loaded ${forms.length} LoanForms from the vault.');

    return forms;
  }

  @override
  Future<bool> deleteLoanForm(int id) async {
    final storage = inject<LocalLoanFormsStorage>();

    final result = await storage.deleteLoanForm(id);

    if (result) {
      _log.finest('Deleted LoanForm with ID = $id from the vault.');
    } else {
      _log.warning("Doesn't delete LoanForm with ID = $id from the vault.");
    }

    return result;
  }
}
