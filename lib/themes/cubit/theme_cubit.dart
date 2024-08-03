import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:practice/themes/dark_theme.dart';
import 'package:practice/themes/light_theme.dart';
part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(LightThemeState());

  bool get isDarkMode => state is DarkThemeState;
  void toggleTheme() {
    if (state is LightThemeState) {
      emit(DarkThemeState());
    } else {
      emit(LightThemeState());
    }
  }
}
