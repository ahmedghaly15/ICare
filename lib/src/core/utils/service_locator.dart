import 'package:get_it/get_it.dart';
import 'package:icare/src/config/routes/app_router.dart';
import 'package:icare/src/features/auth/presentation/cubits/login/login_cubit.dart';

final GetIt serviceLocator = GetIt.instance;

class ServiceLocator {
  void serviceLocatorSetup() {
    _setupForConfig();

    _setupForDatasources();

    _setupForRepos();

    _setupForUseCases();

    _setupForCubits();
  }

  void _setupForDatasources() {}

  void _setupForRepos() {}

  void _setupForUseCases() {}

  void _setupForCubits() {
    serviceLocator.registerFactory<LoginCubit>(() => LoginCubit());
  }

  void _setupForConfig() {
    serviceLocator.registerSingleton<AppRouter>(AppRouter());
  }
}
