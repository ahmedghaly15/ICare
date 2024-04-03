part of '../../../dependency_injection.dart';

class SetupDIForDatasource {
  static void setup() {
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
    getIt.registerLazySingleton<UserRemoteDataSource>(
      () => const UserRemoteDatasourceImpl(),
    );

    // ========== EmergencyDiseaseDetails feature ==========
    getIt.registerLazySingleton<EmergencyDiseaseDetailsRemoteDatasource>(
      () => EmergencyDiseaseDetailsRemoteDatasourceImpl(
        getIt.get<ApiService>(),
      ),
    );

    getIt.registerLazySingleton<DiseaseDetailsLocalDatasource>(
      () => const DiseaseDetailsLocalDatasourceImpl(),
    );

    // ========== MedicalInfoDiseaseDetails feature ==========
    getIt.registerLazySingleton<MedicalInfoDiseaseDetailsRemoteDatasource>(
      () => MedicalInfoDiseaseDetailsRemoteDatasourceImpl(
        getIt.get<ApiService>(),
      ),
    );

    // ========== BabyCryPredictor feature ==========
    getIt.registerLazySingleton<BabyCryPredictorDatasource>(
      () => BabyCryPredictorDatasourceImpl(getIt.get<ApiService>()),
    );

    // ========== ICareBot feature ==========
    getIt.registerLazySingleton<ICareBotRemoteDatasource>(
      () => ICareBotRemoteDatasourceImpl(getIt.get<ApiService>()),
    );

    getIt.registerLazySingleton<ICareBotLocalDatasource>(
      () => const ICareBotLocalDatasourceImpl(),
    );

    // ========== TinyTales feature ==========
    getIt.registerLazySingleton<TinyTalesRemoteDatasource>(
      () => const TinyTalesRemoteDatasourceImpl(),
    );

    // ========== Tips feature ==========
    getIt.registerLazySingleton<TipsRemoteDataSource>(
      () => TipsRemoteDataSourceImpl(getIt.get<ApiService>()),
    );

    getIt.registerLazySingleton<TipsLocalDataSource>(
      () => const TipsLocalDataSourceImpl(),
    );

    // ========== Speech Therapy feature ==========
    getIt.registerLazySingleton<SpeechTherapyRemoteDatasource>(
      () => SpeechTherapyRemoteDatasourceImpl(getIt.get<ApiService>()),
    );

    // ========== Comments feature ==========
    getIt.registerLazySingleton<CommentsRemoteDatasource>(
      () => const CommentsRemoteDatasourceImpl(),
    );
    getIt.registerLazySingleton<CommentRepliesDatasource>(
      () => const CommentRepliesDatasourceImpl(),
    );

    // ========== Chat feature ==========
    getIt.registerLazySingleton<ChatDatasource>(
      () => const ChatDatasourceImpl(),
    );
  }
}
