part of '../../../dependency_injection.dart';

class SetupDIForConfig {
  SetupDIForConfig._();
  static void setup() {
    getIt.registerSingleton<AppRouter>(AppRouter());
  }
}
