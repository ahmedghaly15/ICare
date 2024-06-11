import 'package:flutter/material.dart';

extension DarkThemeExtension on BuildContext {
  bool get isDarkModeActive => Theme.of(this).brightness == Brightness.dark;
}
