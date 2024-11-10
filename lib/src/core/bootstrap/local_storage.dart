import 'package:finstar_test_task/src/core/di/di.dart';
import 'package:finstar_test_task/src/core/storage/isar/_barrel.dart';
import 'package:logging/logging.dart';

Future<void> configureLocalStorage() async {
  final log = Logger('bootstrap')..finest('LocalStorage initializating...');

  await inject<LocalLoanFormsStorage>().init();

  log.finest('LocalStorage initialized');
}
