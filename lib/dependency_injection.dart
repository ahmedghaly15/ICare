import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:icare/src/features/auth/data/datasources/forgot_password_datasource.dart';
import 'package:icare/src/features/auth/data/repositories/forgot_password_repo.dart';
import 'package:icare/src/features/auth/domain/usecases/create_firestore_user.dart';
import 'package:icare/src/features/auth/domain/usecases/forgot_password.dart';
import 'package:icare/src/features/auth/domain/usecases/sign_in_with_google.dart';
import 'package:icare/src/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/network/network_info.dart';
import 'package:icare/src/features/auth/data/datasources/login_datasource.dart';
import 'package:icare/src/features/auth/data/datasources/register_datasource.dart';
import 'package:icare/src/features/auth/data/repositories/login_repo.dart';
import 'package:icare/src/features/auth/data/repositories/register_repo_impl.dart';
import 'package:icare/src/features/auth/domain/repositories/register_repo.dart';
import 'package:icare/src/features/auth/domain/usecases/login.dart';
import 'package:icare/src/features/auth/domain/usecases/register.dart';
import 'package:icare/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:icare/src/features/auth/presentation/cubits/register/register_cubit.dart';

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

  void _setupForDatasources() {
    // ========== Login feature ==========
    getIt.registerLazySingleton<LoginDataSource>(() => LoginDataSourceImpl());

    // ========== Register feature ==========
    getIt.registerLazySingleton<RegisterDataSource>(
      () => RegisterDataSourceImpl(),
    );

    // ========== ForgotPassword feature ==========
    getIt.registerLazySingleton<ForgotPasswordDataSource>(
      () => ForgotPasswordDataSourceImpl(),
    );
  }

  void _setupForRepos() {
    // ========== Login feature ==========
    getIt.registerLazySingleton<LoginRepo>(
      () => LoginRepo(getIt.get<LoginDataSource>()),
    );

    // ========== Register feature ==========
    getIt.registerLazySingleton<RegisterRepo>(
      () => RegisterRepoImpl(getIt.get<RegisterDataSource>()),
    );

    // ========== ForgotPassword feature ==========
    getIt.registerLazySingleton<ForgotPasswordRepo>(
      () => ForgotPasswordRepo(getIt.get<ForgotPasswordDataSource>()),
    );
  }

  void _setupForUseCases() {
    // ========== Login feature ==========
    getIt.registerLazySingleton<LoginUseCase>(
      () => LoginUseCase(getIt.get<LoginRepo>()),
    );

    getIt.registerLazySingleton<SignInWithGoogleUseCase>(
      () => SignInWithGoogleUseCase(getIt.get<LoginRepo>()),
    );

    // ========== Register feature ==========
    getIt.registerLazySingleton<RegisterUseCase>(
      () => RegisterUseCase(getIt.get<RegisterRepo>()),
    );

    getIt.registerLazySingleton<CreateFirestoreUserUseCase>(
      () => CreateFirestoreUserUseCase(getIt.get<RegisterRepo>()),
    );

    // ========== ForgotPassword feature ==========
    getIt.registerLazySingleton<ForgotPasswordUseCase>(
      () => ForgotPasswordUseCase(getIt.get<ForgotPasswordRepo>()),
    );
  }

  void _setupForCubits() {
    // ========== Login feature ==========
    getIt.registerFactory<LoginCubit>(
      () => LoginCubit(
        loginUseCase: getIt.get<LoginUseCase>(),
        signInWithGoogleUseCase: getIt.get<SignInWithGoogleUseCase>(),
      ),
    );

    // ========== Register feature ==========
    getIt.registerFactory<RegisterCubit>(
      () => RegisterCubit(
        registerUseCase: getIt.get<RegisterUseCase>(),
        createFirestoreUserUseCase: getIt.get<CreateFirestoreUserUseCase>(),
      ),
    );

    // ========== ForgotPassword feature ==========
    getIt.registerFactory<ForgotPasswordCubit>(
      () => ForgotPasswordCubit(getIt.get<ForgotPasswordUseCase>()),
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

    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  }
}
