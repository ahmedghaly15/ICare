import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/core/api/dio_factory.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/features/auth/data/datasources/forgot_password_datasource.dart';
import 'package:icare/src/features/auth/data/repositories/forgot_password_repo.dart';
import 'package:icare/src/features/auth/domain/usecases/create_firestore_user.dart';
import 'package:icare/src/features/auth/domain/usecases/forgot_password.dart';
import 'package:icare/src/features/auth/domain/usecases/sign_in_with_google.dart';
import 'package:icare/src/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:icare/src/features/disease_details/data/datasources/emergency_disease/emergency_disease_details_local_datasource.dart';
import 'package:icare/src/features/disease_details/data/datasources/emergency_disease/emergency_disease_details_remote_datasource.dart';
import 'package:icare/src/features/disease_details/data/repositories/emergency_disease_details_repo.dart';
import 'package:icare/src/features/disease_details/domain/usecases/get_emergency_disease_details.dart';
import 'package:icare/src/features/disease_details/presentation/cubits/emergency_disease/emergency_disease_details_cubit.dart';
import 'package:icare/src/features/emergency/data/datasources/emergency_remote_datasource.dart';
import 'package:icare/src/features/emergency/data/datasources/emergency_local_datasource.dart';
import 'package:icare/src/features/emergency/data/repositories/emergency_repo.dart';
import 'package:icare/src/features/emergency/presentation/cubit/emergency_cubit.dart';
import 'package:icare/src/features/medical/data/datasources/medical_local_datasource.dart';
import 'package:icare/src/features/medical/data/datasources/medical_remote_datasource.dart';
import 'package:icare/src/features/medical/data/repositories/medical_repo.dart';
import 'package:icare/src/features/emergency/domain/usecases/get_emergency_diseases.dart';
import 'package:icare/src/features/medical/domain/usecases/get_medical.dart';
import 'package:icare/src/features/medical_info/data/datasources/medical_info_local_datasource.dart';
import 'package:icare/src/features/medical_info/data/datasources/medical_info_remote_datasource.dart';
import 'package:icare/src/features/medical_info/data/repositories/medical_info_repo.dart';
import 'package:icare/src/features/medical_info/domain/usecases/get_medical_info.dart';
import 'package:icare/src/features/medical/presentation/cubits/medical_cubit.dart';
import 'package:icare/src/features/medical_info/presentation/cubit/medical_info_cubit.dart';
import 'package:icare/src/features/onboarding/data/datasources/onboarding_datasource.dart';
import 'package:icare/src/features/onboarding/data/repositories/onboarding_repo.dart';
import 'package:icare/src/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:icare/src/features/user/data/datasources/user_datasource.dart';
import 'package:icare/src/features/user/data/repositories/user_repo.dart';
import 'package:icare/src/features/user/domain/usecases/get_user_data.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';
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
    getIt.registerLazySingleton<LoginDataSource>(
        () => const LoginDataSourceImpl());

    // ========== Register feature ==========
    getIt.registerLazySingleton<RegisterDataSource>(
      () => const RegisterDataSourceImpl(),
    );

    // ========== ForgotPassword feature ==========
    getIt.registerLazySingleton<ForgotPasswordDataSource>(
      () => const ForgotPasswordDataSourceImpl(),
    );

    // ========== Onboarding feature ==========
    getIt.registerLazySingleton<OnboardingDatasource>(
      () => const OnboardingDatasourceImpl(),
    );

    // ========== Medical feature ==========
    getIt.registerLazySingleton<MedicalRemoteDatasource>(
      () => MedicalRemoteDatasourceImpl(getIt.get<ApiService>()),
    );

    getIt.registerLazySingleton<MedicalLocalDatasource>(
        () => const MedicalLocalDatasourceImpl());

    // ========== Emergency feature ==========
    getIt.registerLazySingleton<EmergencyRemoteDatasource>(
      () => EmergencyRemoteDatasourceImpl(getIt.get<ApiService>()),
    );

    getIt.registerLazySingleton<EmergencyLocalDatasource>(
      () => const EmergencyLocalDatasourceImpl(),
    );

    // ========== MedicalInfo feature ==========
    getIt.registerLazySingleton<MedicalInfoRemoteDatasource>(
      () => MedicalInfoRemoteDatasourceImpl(getIt.get<ApiService>()),
    );

    getIt.registerLazySingleton<MedicalInfoLocalDatasource>(
      () => const MedicalInfoLocalDatasourceImpl(),
    );

    // ========== User feature ==========
    getIt.registerLazySingleton<UserDataSource>(
      () => const UserDatasourceImpl(),
    );

    // ========== EmergencyDiseaseDetails feature ==========
    getIt.registerLazySingleton<EmergencyDiseaseDetailsRemoteDatasource>(
      () => EmergencyDiseaseDetailsRemoteDatasourceImpl(
        getIt.get<ApiService>(),
      ),
    );

    getIt.registerLazySingleton<EmergencyDiseaseDetailsLocalDatasource>(
      () => const EmergencyDiseaseDetailsLocalDatasourceImpl(),
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

    // ========== Onboarding feature ==========
    getIt.registerLazySingleton<OnboardingRepo>(
      () => OnboardingRepo(getIt.get<OnboardingDatasource>()),
    );

    // ========== Medical feature ==========
    getIt.registerLazySingleton<MedicalRepo>(
      () => MedicalRepo(
        getIt.get<MedicalRemoteDatasource>(),
        getIt.get<MedicalLocalDatasource>(),
      ),
    );

    // ========== Emergency feature ==========
    getIt.registerLazySingleton<EmergencyRepo>(
      () => EmergencyRepo(
        getIt.get<EmergencyRemoteDatasource>(),
        getIt.get<EmergencyLocalDatasource>(),
      ),
    );

    // ========== MedicalInfo feature ==========
    getIt.registerLazySingleton<MedicalInfoRepo>(
      () => MedicalInfoRepo(
        getIt.get<MedicalInfoRemoteDatasource>(),
        getIt.get<MedicalInfoLocalDatasource>(),
      ),
    );

    // ========== User feature ==========
    getIt.registerLazySingleton<UserRepo>(
      () => UserRepo(getIt.get<UserDataSource>()),
    );

    // ========== EmergencyDiseaseDetails feature ==========
    getIt.registerLazySingleton<EmergencyDiseaseDetailsRepo>(
      () => EmergencyDiseaseDetailsRepo(
        getIt.get<EmergencyDiseaseDetailsRemoteDatasource>(),
        getIt.get<EmergencyDiseaseDetailsLocalDatasource>(),
      ),
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

    // ========== Medical feature ==========
    getIt.registerLazySingleton<GetMedicalUseCase>(
      () => GetMedicalUseCase(getIt.get<MedicalRepo>()),
    );

    // ========== Emergency feature ==========
    getIt.registerLazySingleton<GetEmergencyDiseasesUseCase>(
      () => GetEmergencyDiseasesUseCase(getIt.get<EmergencyRepo>()),
    );

    // ========== MedicalInfo feature ==========
    getIt.registerLazySingleton<GetMedicalInfoUseCase>(
      () => GetMedicalInfoUseCase(getIt.get<MedicalInfoRepo>()),
    );

    // ========== User feature ==========
    getIt.registerLazySingleton<GetUserDataUseCase>(
      () => GetUserDataUseCase(getIt.get<UserRepo>()),
    );

    // ========== EmergencyDiseaseDetails feature ==========
    getIt.registerLazySingleton<GetEmergencyDiseaseDetailsUseCase>(
      () => GetEmergencyDiseaseDetailsUseCase(
          getIt.get<EmergencyDiseaseDetailsRepo>()),
    );
  }

  void _setupForCubits() {
    // ========== Login feature ==========
    getIt.registerFactory<LoginCubit>(
      () => LoginCubit(
        loginUseCase: getIt.get<LoginUseCase>(),
        signInWithGoogleUseCase: getIt.get<SignInWithGoogleUseCase>(),
        createFirestoreUserUseCase: getIt.get<CreateFirestoreUserUseCase>(),
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

    // ========== Onboarding feature ==========
    getIt.registerFactory<OnboardingCubit>(
      () => OnboardingCubit(getIt.get<OnboardingRepo>()),
    );

    // ========== Medical feature ==========
    getIt.registerFactory<MedicalCubit>(
      () => MedicalCubit(getIt.get<GetMedicalUseCase>()),
    );

    // ========== Emergency feature ==========
    getIt.registerFactory<EmergencyCubit>(
      () => EmergencyCubit(getIt.get<GetEmergencyDiseasesUseCase>()),
    );

    // ========== MedicalInfo feature ==========
    getIt.registerFactory<MedicalInfoCubit>(
      () => MedicalInfoCubit(getIt.get<GetMedicalInfoUseCase>()),
    );

    // ========== User feature ==========
    getIt.registerFactory<UserCubit>(
      () => UserCubit(getIt.get<GetUserDataUseCase>()),
    );

    // ========== EmergencyDiseaseDetails feature ==========
    getIt.registerFactory<EmergencyDiseaseDetailsCubit>(
      () => EmergencyDiseaseDetailsCubit(
        getIt.get<GetEmergencyDiseaseDetailsUseCase>(),
      ),
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

    getIt.registerLazySingleton<CacheHelper>(
      () => CacheHelper(getIt.get<SharedPreferences>()),
    );

    final Dio dio = DioFactory.getDio();
    getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
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
