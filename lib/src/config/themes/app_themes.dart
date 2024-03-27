import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';

class AppThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        fontFamily: AppStrings.fontFamily,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.scaffoldBackgroundColor,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: AppTextStyles.textStyle30Bold(context).copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: AppTextStyles.textStyle13Bold(context),
            foregroundColor: AppColors.primaryColor,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0.0,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.greyColor,
          selectedLabelStyle: AppTextStyles.textStyle15Bold(context),
          unselectedLabelStyle: AppTextStyles.textStyle15Bold(context),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: Size.zero,
          ),
        ),
      );
}
