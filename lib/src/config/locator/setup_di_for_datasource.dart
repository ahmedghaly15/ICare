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
    getIt.registerLazySingleton<MedicalLocalDatasource>(
      () => const MedicalLocalDatasourceImpl(),
    );
    getIt.registerLazySingleton<MedicalRemoteDatasource>(
      () => MedicalRemoteDatasourceImpl(getIt.get<ApiService>()),
    );

    // ========== User feature ==========
    getIt.registerLazySingleton<UserRemoteDataSource>(
      () => const UserRemoteDatasourceImpl(),
    );
    getIt.registerLazySingleton<UserLocalDatasource>(
      () => const UserLocalDatasourceImpl(),
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
    getIt.registerLazySingleton<BabyCryPredictorRemoteDatasource>(
      () => BabyCryPredictorRemoteDatasourceImpl(getIt.get<ApiService>()),
    );
    getIt.registerLazySingleton<BabyCryPredictorLocalDatasource>(
      () => const BabyCryPredictorLocalDatasourceImpl(),
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
    getIt.registerLazySingleton<SpeechTherapyLocalDatasource>(
      () => const SpeechTherapyLocalDatasourceImpl(),
    );

    // ========== Comments feature ==========
    getIt.registerLazySingleton<CommentsRemoteDatasource>(
      () => const CommentsRemoteDatasourceImpl(),
    );
    getIt.registerLazySingleton<CommentRepliesDatasource>(
      () => const CommentRepliesDatasourceImpl(),
    );

    // ========== Chat feature ==========
    getIt.registerLazySingleton<ChatRemoteDatasource>(
      () => const ChatRemoteDatasourceImpl(),
    );
    getIt.registerLazySingleton<ChatLocalDatasource>(
      () => const ChatsLocalDatasourceImpl(),
    );

    // ========== Search feature ==========
    getIt.registerLazySingleton<SearchDatasource>(
      () => const SearchDatasourceImpl(),
    );

    // ========== Edit Profile feature ==========
    getIt.registerLazySingleton<EditProfileDatasource>(
      () => const EditProfileDatasourceImpl(),
    );

    // ========== Profile feature ==========
    getIt.registerLazySingleton<ProfileDatasource>(() => const ProfileDatasourceImpl(),);

    // ========== Home feature ==========
    getIt.registerLazySingleton<HomeRemoteDatasource>(
      () => const HomeRemoteDatasourceImpl(),
    );
    getIt.registerLazySingleton<HomeLocalDatasource>(
      () => const HomeLocalDatasourceImpl(),
    );

    // ========== Notifications feature ==========
    getIt.registerLazySingleton<NotificationsDatasource>(
      () => NotificationsDatasourceImpl(getIt.get<ApiService>()),
    );
  }
}
