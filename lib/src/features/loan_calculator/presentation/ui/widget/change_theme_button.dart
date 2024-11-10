import 'package:finstar_test_task/src/features/app/presentation/_barrel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeThemeModeIconButton extends StatelessWidget {
  const ChangeThemeModeIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        context.read<ThemeModeCubit>().changeThemeMode();
      },
      icon: BlocBuilder<ThemeModeCubit, ThemeMode>(
        builder: (context, state) => Icon(
          state == ThemeMode.light ? Icons.light_mode_outlined : Icons.dark_mode_outlined,
        ),
      ),
    );
  }
}
