import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class ThemeModeCubit extends Cubit<ThemeMode> {
  ThemeModeCubit(ThemeMode themeMode) : super(themeMode);

  void changeThemeMode() {
    emit(state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light);
  }
}
