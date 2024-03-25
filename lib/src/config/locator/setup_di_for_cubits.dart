part of '../../../dependency_injection.dart';

class SetupDIForCubits {
  static void setup() {
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

    // ========== MedicalInfoDiseaseDetails feature ==========
    getIt.registerFactory<MedicalInfoDiseaseDetailsCubit>(
      () => MedicalInfoDiseaseDetailsCubit(
        getIt.get<GetMedicalInfoDiseaseDetailsUseCase>(),
      ),
    );

    // ========== BabyCryPredictor feature ==========
    getIt.registerFactory<BabyCryPredictorCubit>(
      () => BabyCryPredictorCubit(getIt.get<BabyCryPredictorUseCase>()),
    );

    // ========== ICareBot feature ==========
    getIt.registerFactory<ICareBotCubit>(
      () => ICareBotCubit(getIt.get<AskICareBotUseCase>()),
    );

    getIt.registerFactory<BookmarkCubit>(
      () => BookmarkCubit(
        bookmarkICareBotMessageUseCase:
            getIt.get<BookmarkICareBotMessageUseCase>(),
        retrieveICareBotBookmarksUseCase:
            getIt.get<RetrieveICareBotBookmarksUseCase>(),
        deleteBookmarkUseCase: getIt.get<DeleteBookmarkUseCase>(),
      ),
    );

    // ========== TinyTales feature ==========
    getIt.registerFactory<TinyTalesCubit>(
      () => TinyTalesCubit(
        createTinyTaleUseCase: getIt.get<CreateTinyTaleUseCase>(),
        likeTinyTaleUseCase: getIt.get<LikeTinyTaleUseCase>(),
        unLikeTinyTaleUseCase: getIt.get<UnLikeTinyTaleUseCase>(),
        deleteTinyTaleUseCase: getIt.get<DeleteTinyTaleUseCase>(),
        uploadTinyTaleImageUseCase: getIt.get<UploadTinyTaleImageUseCase>(),
        isTinyTaleLikedByMeUseCase: getIt.get<IsTinyTaleLikeByMeUseCase>(),
      ),
    );

    // ========== Tips feature ==========
    getIt.registerFactory<TipsCubit>(
      () => TipsCubit(getIt.get<GetRandomTipUseCase>()),
    );
  }
}
