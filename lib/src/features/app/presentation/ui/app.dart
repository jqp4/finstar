import 'package:finstar_test_task/src/core/_barrel.dart';
import 'package:finstar_test_task/src/features/app/presentation/_barrel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  void dispose() {
    _appRouter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = createTextTheme(context);
    final materialTheme = MaterialTheme(textTheme);
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    final themeMode = brightness == Brightness.light ? ThemeMode.light : ThemeMode.dark;

    return BlocProvider(
      create: (_) => ThemeModeCubit(themeMode),
      child: BlocBuilder<ThemeModeCubit, ThemeMode>(
        builder: (context, state) => MaterialApp.router(
          title: 'Finstar test task',
          routerConfig: _appRouter.config(),
          darkTheme: materialTheme.dark,
          theme: materialTheme.light,
          themeMode: state,
        ),
      ),
    );
  }
}
