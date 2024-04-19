import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/config/themes/app_themes.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';

class ThemesCubit extends Cubit<ThemeData> {
  ThemesCubit() : super(AppThemes.lightTheme) {
    _getThemeFromPrefs();
  }

  Future<void> _saveThemeToPrefs({required Brightness brightness}) async {
    final themeIndex = brightness == Brightness.light ? 0 : 1;
    debugPrint('THEME INDEX: $themeIndex');
    await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedTheme,
          value: themeIndex,
        );
  }

  Future<void> _getThemeFromPrefs() async {
    final savedThemeIndex =
        getIt.get<CacheHelper>().getIntData(key: AppStrings.cachedTheme) ?? 0;
    final savedTheme =
        savedThemeIndex == 0 ? AppThemes.lightTheme : AppThemes.darkTheme;
    emit(savedTheme);
  }

  void toggleTheme() {
    emit(state.brightness == Brightness.light
        ? AppThemes.darkTheme
        : AppThemes.lightTheme);
    debugPrint('STATE: ${state.brightness.toString()}');
    _saveThemeToPrefs(brightness: state.brightness);
  }
}
