part of '../../../dependency_injection.dart';

class SetupDIForRepos {
  SetupDIForRepos._();
  static void setup() {
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

    // ========== User feature ==========
    getIt.registerLazySingleton<UserRepo>(
      () => UserRepoImpl(
        getIt.get<UserRemoteDataSource>(),
        getIt.get<UserLocalDatasource>(),
      ),
    );

    // ========== EmergencyDiseaseDetails feature ==========
    getIt.registerLazySingleton<EmergencyDiseaseDetailsRepo>(
      () => EmergencyDiseaseDetailsRepo(
        getIt.get<EmergencyDiseaseDetailsRemoteDatasource>(),
        getIt.get<DiseaseDetailsLocalDatasource>(),
      ),
    );

    // ========== MedicalInfoDiseaseDetails feature ==========
    getIt.registerLazySingleton<MedicalInfoDiseaseDetailsRepo>(
      () => MedicalInfoDiseaseDetailsRepo(
        getIt.get<MedicalInfoDiseaseDetailsRemoteDatasource>(),
        getIt.get<DiseaseDetailsLocalDatasource>(),
      ),
    );

    // ========== BabyCryPredictor feature ==========
    getIt.registerLazySingleton<BabyCryPredictorRepo>(
      () => BabyCryPredictorRepo(
        getIt.get<BabyCryPredictorRemoteDatasource>(),
        getIt.get<BabyCryPredictorLocalDatasource>(),
      ),
    );

    // ========== ICareBot feature ==========
    getIt.registerLazySingleton<ICareBotRepo>(
      () => ICareBotRepoImpl(
        getIt.get<ICareBotRemoteDatasource>(),
        getIt.get<ICareBotLocalDatasource>(),
      ),
    );

    // ========== TinyTales feature ==========
    getIt.registerLazySingleton<TinyTalesRepo>(
      () => TinyTalesRepoImpl(getIt.get<TinyTalesRemoteDatasource>()),
    );

    // ========== Tips feature ==========
    getIt.registerLazySingleton<TipsRepo>(
      () => TipsRepo(
        getIt.get<TipsRemoteDataSource>(),
        getIt.get<TipsLocalDataSource>(),
      ),
    );

    // ========== Speech Therapy feature ==========
    getIt.registerLazySingleton<SpeechTherapyRepo>(
      () => SpeechTherapyRepoImpl(
        getIt.get<SpeechTherapyRemoteDatasource>(),
        getIt.get<SpeechTherapyLocalDatasource>(),
      ),
    );

    // ========== Comments feature ==========
    getIt.registerLazySingleton<CommentsRepo>(
      () => CommentsRepoImpl(getIt.get<CommentsRemoteDatasource>()),
    );
    getIt.registerLazySingleton<CommentRepliesRepo>(
      () => CommentRepliesRepoImpl(getIt.get<CommentRepliesDatasource>()),
    );

    // ========== Chat feature ==========
    getIt.registerLazySingleton<ChatRepo>(
      () => ChatRepo(
        getIt.get<ChatRemoteDatasource>(),
        getIt.get<ChatLocalDatasource>(),
      ),
    );

    // ========== Search feature ==========
    getIt.registerLazySingleton<SearchRepo>(
      () => SearchRepo(getIt.get<SearchDatasource>()),
    );

    // ========== Profile feature ==========
    getIt.registerLazySingleton<ProfileRepo>(
      () => ProfileRepo(getIt.get<ProfileDatasource>()),
    );

    // ========== Edit Profile feature ==========
    getIt.registerLazySingleton<EditProfileRepo>(
      () => EditProfileRepo(getIt.get<EditProfileDatasource>()),
    );

    // ========== Home feature ==========
    getIt.registerLazySingleton<HomeRepo>(
      () => HomeRepo(
        getIt.get<HomeRemoteDatasource>(),
        getIt.get<HomeLocalDatasource>(),
      ),
    );

    // ========== Notifications feature ==========
    getIt.registerLazySingleton<NotificationsRepo>(
      () => NotificationsRepo(getIt.get<NotificationsDatasource>()),
    );
  }
}
