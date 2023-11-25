import 'package:get_it/get_it.dart';
import 'package:icare/src/config/routes/app_router.dart';

final GetIt serviceLocator = GetIt.instance;

class ServiceLocator {
  void serviceLocatorSetup() {
    _setupForConfig();
  }

  void _setupForConfig() {
    serviceLocator.registerSingleton<AppRouter>(AppRouter());
  }
}
