import 'package:flutter/material.dart';
import 'package:theme/index.dart';

final lightTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.lightBackground,
  colorScheme: const ColorScheme.light(
    surface: AppColors.lightBackground,
    primary: AppColors.lightPrimary,
    secondary: AppColors.lightSecondary,
    tertiary: AppColors.lightTertiary,
    inversePrimary: AppColors.lightInversePrimary,
  ),
);
