import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';

class AppThemes {
  AppThemes._();

  static ThemeData lightTheme(BuildContext context) => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        fontFamily: AppStrings.interFontFamily,
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
          elevation: 0,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: AppTextStyles.textStyle15Bold(context),
          unselectedLabelStyle: AppTextStyles.textStyle15Bold(context),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: Size.zero,
          ),
        ),
        tabBarTheme: TabBarTheme(
          indicatorColor: AppColors.primaryColor,
          indicatorSize: TabBarIndicatorSize.label,
          dividerHeight: 0,
          labelStyle: AppTextStyles.textStyle18Bold(context),
          unselectedLabelColor: Colors.black,
          labelColor: Colors.black,
          labelPadding: const EdgeInsets.symmetric(
            horizontal: 48.0,
          ),
          tabAlignment: TabAlignment.center,
          overlayColor: MaterialStateProperty.all(
            AppColors.gradientOrange,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(
              color: AppColors.primaryColor,
              width: 1,
            ),
            backgroundColor: AppColors.primaryColor,
            textStyle: AppTextStyles.textStyle18Bold(context),
            foregroundColor: Colors.white,
          ),
        ),
      );
}
