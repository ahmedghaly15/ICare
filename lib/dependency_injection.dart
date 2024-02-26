import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/network/network_info.dart';
import 'package:icare/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:icare/src/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:icare/src/features/auth/presentation/cubits/reset_password/reset_password_cubit.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final GetIt getIt = GetIt.instance;

class DependencyInjection {
  Future<void> setup() async {
    await _setupForExternal();

    _setupForConfig();

    _setupForCore();

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

  void _setupForCore() {
    getIt.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(
        connectionChecker: getIt.get<InternetConnectionChecker>(),
      ),
    );
  }

  Future<void> _setupForExternal() async {
    getIt.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker(),
    );

    getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);

    getIt.registerLazySingleton<FirebaseFirestore>(
      () => FirebaseFirestore.instance,
    );

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  }
}
