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
        likeTinyTaleUseCase: getIt.get<LikeTinyTaleUseCase>(),
        unLikeTinyTaleUseCase: getIt.get<UnLikeTinyTaleUseCase>(),
        deleteTinyTaleUseCase: getIt.get<DeleteTinyTaleUseCase>(),
        isTinyTaleLikedByMeUseCase: getIt.get<IsTinyTaleLikeByMeUseCase>(),
        getTinyTalesUseCase: getIt.get<GetTinyTalesUseCase>(),
        bookmarkTinyTaleUseCase: getIt.get<BookmarkTinyTaleUseCase>(),
        unBookmarkTinyTaleUseCase: getIt.get<UnBookmarkTinyTaleUseCase>(),
        getBookmarkedTinyTalesUseCase:
            getIt.get<GetBookmarkedTinyTalesUseCase>(),
      ),
    );

    getIt.registerFactory<NewTinyTaleCubit>(
      () => NewTinyTaleCubit(
        createTinyTaleUseCase: getIt.get<CreateTinyTaleUseCase>(),
        uploadTinyTaleImageUseCase: getIt.get<UploadTinyTaleImageUseCase>(),
      ),
    );

    // ========== Tips feature ==========
    getIt.registerFactory<TipsCubit>(
      () => TipsCubit(getIt.get<GetRandomTipUseCase>()),
    );

    // Speech Therapy feature
    getIt.registerFactory<SpeechTherapyCubit>(
      () => SpeechTherapyCubit(
        getLevelOneTrainingDataUseCase:
            getIt.get<GetLevelOneTrainingDataUseCase>(),
        getLevelOneExamUseCase: getIt.get<GetLevelOneExamUseCase>(),
        markLevelOneUseCase: getIt.get<MarkLevelOneUseCase>(),
      ),
    );

    // ========== Comments feature ==========
    getIt.registerFactory<CommentsCubit>(
      () => CommentsCubit(
        streamCommentsUseCase: getIt.get<StreamCommentsUseCase>(),
        typeNewCommentUseCase: getIt.get<TypeNewCommentUseCase>(),
        uploadCommentImageUseCase: getIt.get<UploadCommentImageUseCase>(),
        deleteCommentUseCase: getIt.get<DeleteCommentUseCase>(),
        likeCommentUseCase: getIt.get<LikeCommentUseCase>(),
        unLikeCommentUseCase: getIt.get<UnLikeCommentUseCase>(),
        isCommentLikedByMeUseCase: getIt.get<IsCommentLikedByMeUseCase>(),
      ),
    );
    getIt.registerFactory<CommentRepliesCubit>(
      () => CommentRepliesCubit(
        deleteCommentReplyUseCase: getIt.get<DeleteCommentReplyUseCase>(),
        likeCommentReplyUseCase: getIt.get<LikeCommentReplyUseCase>(),
        unlikeCommentReplyUseCase: getIt.get<UnLikeCommentReplyUseCase>(),
        isCommentReplyLikedByMeUseCase:
            getIt.get<IsCommentReplyLikedByMeUseCase>(),
        getCommentRepliesUseCase: getIt.get<GetCommentRepliesUseCase>(),
        typeNewCommentReplyUseCase: getIt.get<TypeNewCommentReplyUseCase>(),
        uploadCommentReplyImageUseCase:
            getIt.get<UploadCommentReplyImageUseCase>(),
      ),
    );
  }
}
