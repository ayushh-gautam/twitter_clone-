import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/main_page.dart';
import 'package:practice/pages/login--register/login_page.dart';
import 'package:practice/themes/cubit/theme_cubit.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          ThemeData themeData;
          if (state is LightThemeState) {
            themeData = state.themeData;
          } else if (state is DarkThemeState) {
            themeData = state.themeData;
          } else {
            themeData = ThemeData.light();
          }

          return MaterialApp(
            theme: themeData,
            home: const MainPage(),
          );
        },
      ),
    );
  }
}
