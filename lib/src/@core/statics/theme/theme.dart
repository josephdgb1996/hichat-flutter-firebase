import 'package:flutter/material.dart';
import 'package:app/src/@core/statics/theme/colors.dart';

abstract class AppTheme {
  static ColorScheme lightColorScheme = ColorScheme.light(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
  );

  static ColorScheme darkColorScheme = ColorScheme.dark(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
  );

  static ThemeData lighTheme = ThemeData.from(
    colorScheme: lightColorScheme,
  );
}
