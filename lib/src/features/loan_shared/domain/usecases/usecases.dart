import 'package:dartz/dartz.dart' hide State;
import 'package:finstar_test_task/src/core/error/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_shared/domain/_barrel.dart';
import 'package:injectable/injectable.dart';

abstract class LoanUseCasePrototype {
  const LoanUseCasePrototype(this.loanRepository);

  final ILoanRepository loanRepository;
}

@singleton
class StoreLoanForm extends LoanUseCasePrototype {
  const StoreLoanForm(super.loanRepository);

  Future<Either<Failure, int>> call(LoanForm form) async {
    return loanRepository.storeLoanForm(form);
  }
}

@singleton
class ReadAllLoanForms extends LoanUseCasePrototype {
  const ReadAllLoanForms(super.loanRepository);

  Future<Either<Failure, List<StoredLoanForm>>> call() async {
    return loanRepository.readAllLoanForms();
  }
}

@singleton
class DeleteLoanForm extends LoanUseCasePrototype {
  const DeleteLoanForm(super.loanRepository);

  Future<Either<Failure, bool>> call(int formStorageId) async {
    final maybeDeleted = await loanRepository.deleteLoanForm(formStorageId);
    return maybeDeleted;
  }
}
