import 'package:get_it/get_it.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:icare/src/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:icare/src/features/auth/presentation/cubits/reset_password/reset_password_cubit.dart';

final GetIt getIt = GetIt.instance;

class ServiceLocator {
  void setupServiceLocator() {
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
    getIt.registerFactory<LoginCubit>(() => LoginCubit());

    getIt.registerFactory<RegisterCubit>(() => RegisterCubit());

    getIt.registerFactory<ResetPasswordCubit>(
      () => ResetPasswordCubit(),
    );
  }

  void _setupForConfig() {
    getIt.registerSingleton<AppRouter>(AppRouter());
  }
}
