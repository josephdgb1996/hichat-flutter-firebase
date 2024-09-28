import 'package:app/src/@core/themes/colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ColorScheme lightColorScheme = ColorScheme.light(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
  );

  static ColorScheme darkColorScheme = ColorScheme.dark(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
  );
}