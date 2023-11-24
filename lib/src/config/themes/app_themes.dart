import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_colors.dart';
import 'package:icare/src/core/utils/app_strings.dart';

class AppThemes {
  static ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        fontFamily: AppStrings.fontFamily,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.scaffoldBackgroundColor,
          elevation: 0,
        ),
      );
}
