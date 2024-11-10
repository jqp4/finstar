import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:finstar_test_task/src/core/bootstrap/bootstrap_service.dart';
import 'package:finstar_test_task/src/core/di/di.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

enum AppBuildType {
  development,
  staging,
  production,
}

class GlobalBlocObserver extends BlocObserver {
  final _log = Logger('GlobalBlocObserver');

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    _log.severe('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(
  Widget Function() appBuilder,
  AppBuildType appBuildType,
) async {
  final log = Logger('bootstrap_root');

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await configureDependencies();
      await inject<BootstrapService>().init(appBuildType);

      Bloc.observer = GlobalBlocObserver();

      runApp(appBuilder());
    },
    (error, stackTrace) async {
      log.shout('Unexpected error (global)', error, stackTrace);
    },
  );
}
