import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_themes.dart';
import 'package:icare/src/core/utils/app_strings.dart';

class ICareApp extends StatelessWidget {
  const ICareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appTitle,
      theme: AppThemes.lightTheme,
      home: const Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
