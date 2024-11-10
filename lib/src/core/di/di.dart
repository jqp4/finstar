import 'package:fancy_logger/fancy_logger.module.dart';
import 'package:finstar_test_task/src/core/di/di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final _getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
  generateForDir: ['lib'],
  externalPackageModulesBefore: [
    ExternalModule(FancyLoggerPackageModule),
  ],
)
Future<void> configureDependencies() => _getIt.init();

T inject<T extends Object>({
  String? instanceName,
}) =>
    _getIt.get<T>(
      instanceName: instanceName,
    );
