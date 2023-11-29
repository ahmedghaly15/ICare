import 'package:get_it/get_it.dart';
import 'package:icare/src/config/routes/app_router.dart';
import 'package:icare/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:icare/src/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:icare/src/features/auth/presentation/cubits/reset_password/reset_password_cubit.dart';

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

    serviceLocator.registerFactory<RegisterCubit>(() => RegisterCubit());

    serviceLocator.registerFactory<ResetPasswordCubit>(
      () => ResetPasswordCubit(),
    );
  }

  void _setupForConfig() {
    serviceLocator.registerSingleton<AppRouter>(AppRouter());
  }
}
