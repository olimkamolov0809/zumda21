import 'package:flutter/material.dart';
import 'package:zumda/app/app_colors.dart';

class Appthemes {
  static final primarySwatch = MaterialColor(
    AppColors.BLUE.value,
    const <int, Color>{
      50: AppColors.BLUE,
      100: AppColors.BLUE,
      200: AppColors.BLUE,
      300: AppColors.BLUE,
      400: AppColors.BLUE,
      500: AppColors.BLUE,
      600: AppColors.BLUE,
      700: AppColors.BLUE,
      800: AppColors.BLUE,
      900: AppColors.BLUE,
    },
  );

  static final LIGHT_THEME = ThemeData(
    primarySwatch: primarySwatch,
    scaffoldBackgroundColor: AppColors.WHITE,
    // fontFamily: "SF Pro Text",
  );
}
