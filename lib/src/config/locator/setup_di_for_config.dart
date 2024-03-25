part of '../../../dependency_injection.dart';

class SetupDIForConfig {
  static void setup() {
    getIt.registerSingleton<AppRouter>(AppRouter());
  }
}
