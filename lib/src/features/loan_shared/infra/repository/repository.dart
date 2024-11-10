import 'package:dartz/dartz.dart' hide State;
import 'package:finstar_test_task/src/core/error/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_shared/domain/_barrel.dart';
import 'package:finstar_test_task/src/features/loan_shared/infra/_barrel.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ILoanRepository)
class LoanRepositoryImpl implements ILoanRepository {
  const LoanRepositoryImpl(
    this.localDataSource,
  );

  final ILoanLocalDataSource localDataSource;

  @override
  Future<Either<Failure, int>> storeLoanForm(LoanForm form) async {
    return _safetyRequest<int>(() async {
      final storageId = await localDataSource.storeLoanForm(form);
      return storageId;
    });
  }

  @override
  Future<Either<Failure, List<StoredLoanForm>>> readAllLoanForms() async {
    return _safetyRequest<List<StoredLoanForm>>(() async {
      final formCollections = await localDataSource.readAllLoanForms();
      return formCollections.map((e) => e.toEntity()).toList();
    });
  }

  @override
  Future<Either<Failure, bool>> deleteLoanForm(int id) async {
    return _safetyRequest<bool>(() async {
      final isDeleted = localDataSource.deleteLoanForm(id);
      return isDeleted;
    });
  }

  // Helper
  Future<Either<Failure, T>> _safetyRequest<T>(Future<T> Function() request) async {
    try {
      return Right(await request());
    } on CacheException catch (e, t) {
      return Left(CacheFailure(e.description, e, t));
    } on Exception catch (e, t) {
      return Left(UnknownFailure('Unknown Exception', e, t));
    }
  }
}
