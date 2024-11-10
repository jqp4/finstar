import 'package:finstar_test_task/src/core/bootstrap/_barrel.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:rxdart/rxdart.dart';

/// Stages that will be handled during bootstrap process.
/// If app fails during some stage, then it will be easy to rerun this process
enum BootstrapStages {
  core,
  storage,
  completed,
}

/// Service that allows initialize app stage by stage
@singleton
class BootstrapService {
  static final _log = Logger('bootstrap');

  final _bootstrapStageSubject = BehaviorSubject<BootstrapStages>();

  Stream<BootstrapStages> get bootstrapStageStream => _bootstrapStageSubject;

  BootstrapStages get bootstrapStage => _bootstrapStageSubject.value;

  Future<void> init(AppBuildType appBuildType) async {
    try {
      _bootstrapStageSubject.add(BootstrapStages.core);
      await _coreStage(appBuildType);

      _bootstrapStageSubject.add(BootstrapStages.storage);
      await _storageStage();

      _bootstrapStageSubject.add(BootstrapStages.completed);
    } on Exception catch (e, t) {
      _log.severe('init', e, t);
    }
  }

  Future<void> _coreStage(AppBuildType appBuildType) async {
    await configureLogger(appBuildType);
  }

  Future<void> _storageStage() async {
    await configureLocalStorage();
  }
}
