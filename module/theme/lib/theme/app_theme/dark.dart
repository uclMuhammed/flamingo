import 'package:flutter/material.dart';
import 'package:theme/index.dart';

final darkTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.darkBackground,
  colorScheme: const ColorScheme.dark(
    surface: AppColors.darkBackground,
    primary: AppColors.darkPrimary,
    secondary: AppColors.darkSecondary,
    tertiary: AppColors.darkTertiary,
    inversePrimary: AppColors.darkInversePrimary,
  ),
);
