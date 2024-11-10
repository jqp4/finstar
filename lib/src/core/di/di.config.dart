// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fancy_logger/fancy_logger.module.dart' as _i1060;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/loan_calculator/domain/usecases/usecases.dart' as _i636;
import '../../features/loan_shared/domain/_barrel.dart' as _i1001;
import '../../features/loan_shared/domain/usecases/usecases.dart' as _i295;
import '../../features/loan_shared/external/local_data_source.dart' as _i195;
import '../../features/loan_shared/infra/_barrel.dart' as _i725;
import '../../features/loan_shared/infra/repository/repository.dart' as _i264;
import '../bootstrap/bootstrap_service.dart' as _i739;
import '../storage/isar/isar_manager.dart' as _i1013;
import '../storage/isar/local_loan_forms_storage.dart' as _i548;
import '../uikit/loading_overlay/loading_overlay.dart' as _i492;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await _i1060.FancyLoggerPackageModule().init(gh);
    gh.singleton<_i739.BootstrapService>(() => _i739.BootstrapService());
    gh.singleton<_i1013.IsarManager>(() => _i1013.IsarManager());
    gh.singleton<_i548.LocalLoanFormsStorage>(
      () => _i548.LocalLoanFormsStorage(),
      dispose: (i) => i.dispose(),
    );
    gh.singleton<_i636.CalculateAnnuityPayments>(() => const _i636.CalculateAnnuityPayments());
    gh.singleton<_i636.CalculateDifferentiatedPayments>(() => const _i636.CalculateDifferentiatedPayments());
    gh.lazySingleton<_i492.LoadingOverlay>(() => _i492.LoadingOverlay());
    gh.singleton<_i725.ILoanLocalDataSource>(() => const _i195.LoanLocalDataSourceImpl());
    gh.singleton<_i1001.ILoanRepository>(() => _i264.LoanRepositoryImpl(gh<_i725.ILoanLocalDataSource>()));
    gh.singleton<_i295.StoreLoanForm>(() => _i295.StoreLoanForm(gh<_i1001.ILoanRepository>()));
    gh.singleton<_i295.ReadAllLoanForms>(() => _i295.ReadAllLoanForms(gh<_i1001.ILoanRepository>()));
    gh.singleton<_i295.DeleteLoanForm>(() => _i295.DeleteLoanForm(gh<_i1001.ILoanRepository>()));
    return this;
  }
}
