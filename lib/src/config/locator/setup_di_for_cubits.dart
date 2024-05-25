part of '../../../dependency_injection.dart';

class SetupDIForCubits {
  static void setup() {
    // ========== Themes feature ==========
    getIt.registerFactory<ThemesCubit>(() => ThemesCubit());

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
    getIt.registerFactory<MedicalInfoCubit>(
      () => MedicalInfoCubit(getIt.get<GetMedicalInfoUseCase>()),
    );
    getIt.registerFactory<EmergencyCubit>(
      () => EmergencyCubit(getIt.get<GetEmergencyDiseasesUseCase>()),
    );

    // ========== User feature ==========
    getIt.registerFactory<UserCubit>(
      () => UserCubit(
        getUserDataUseCase: getIt.get<GetUserDataUseCase>(),
        getAllUsersUseCase: getIt.get<GetAllUsersUseCase>(),
        followUseCase: getIt.get<FollowUseCase>(),
        unFollowUseCase: getIt.get<UnFollowUseCase>(),
        getFollowersUseCase: getIt.get<GetFollowersUseCase>(),
        getFollowingUseCase: getIt.get<GetFollowingUseCase>(),
        signOutUseCase: getIt.get<SignOutUseCase>(),
      ),
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

    getIt.registerFactory<CurrentTapCubit>(() => CurrentTapCubit());

    // ========== BabyCryPredictor feature ==========
    getIt.registerFactory<BabyCryPredictorCubit>(
      () => BabyCryPredictorCubit(
        babyCryPredictorUseCase: getIt.get<BabyCryPredictorUseCase>(),
        getBabyCryPredictorLastResultUseCase:
            getIt.get<GetBabyCryPredictorLastResultUseCase>(),
      ),
    );
    getIt.registerFactory<BabyCryPredictorFeedbackCubit>(
      () => BabyCryPredictorFeedbackCubit(
        babyCryPredictorLeaveFeedbackUseCase:
            getIt.get<BabyCryPredictorLeaveFeedbackUseCase>(),
        getBabyCryPredictorClassesUseCase:
            getIt.get<GetBabyCryPredictorClassesUseCase>(),
      ),
    );
    getIt.registerFactory<AddNewClassCubit>(
      () => AddNewClassCubit(
        getIt.get<BabyCryPredictorAddNewClassUseCase>(),
      ),
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
        bookmarkTinyTaleUseCase: getIt.get<BookmarkTinyTaleUseCase>(),
        unBookmarkTinyTaleUseCase: getIt.get<UnBookmarkTinyTaleUseCase>(),
        getBookmarkedTinyTalesUseCase:
            getIt.get<GetBookmarkedTinyTalesUseCase>(),
        isTinyTaleBookmarkedByMeUseCase:
            getIt.get<IsTinyTaleBookmarkedByMeUseCase>(),
        getPeopleWhoLikedUseCase: getIt.get<GetPeopleWhoLikedUseCase>(),
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
        getIt.get<GetSpeechTherapyLevelsUseCase>(),
        getIt.get<GetLevelOneTrainingDataUseCase>(),
        getIt.get<GetLevelTwoTrainingDataUseCase>(),
        getIt.get<GetAdvancedLevelTrainingDataUseCase>(),
        getIt.get<ScoreUseCase>(),
      ),
    );
    getIt.registerFactory<LevelTrainingCubit>(
      () => LevelTrainingCubit(
        getIt.get<MarkUseCase>(),
        getIt.get<AdvancedLevelMarkingUseCase>(),
      ),
    );

    // ========== Comments feature ==========
    getIt.registerFactory<CommentsCubit>(
      () => CommentsCubit(
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
        typeNewCommentReplyUseCase: getIt.get<TypeNewCommentReplyUseCase>(),
        uploadCommentReplyImageUseCase:
            getIt.get<UploadCommentReplyImageUseCase>(),
      ),
    );

    // ========== Chat feature ==========
    getIt.registerFactory<ChatCubit>(
      () => ChatCubit(
        sendMessageUseCase: getIt.get<SendMessageUseCase>(),
        uploadMessageImageUseCase: getIt.get<UploadMessageImageUseCase>(),
        getChatsUseCase: getIt.get<GetChatsUseCase>(),
        alsoDeleteChatForOtherUserUseCase:
            getIt.get<AlsoDeleteChatForOtherUserUseCase>(),
        deleteChatUseCase: getIt.get<DeleteChatUseCase>(),
      ),
    );

    // ========== Search feature ==========
    getIt.registerFactory<SearchCubit>(
      () => SearchCubit(getIt.get<SearchUsersUseCase>()),
    );

    // ========== Edit Profile feature ==========
    getIt.registerFactory<EditProfileCubit>(
      () => EditProfileCubit(
        getIt.get<UpdateUserUseCase>(),
        getIt.get<UploadNewProfileImageUseCase>(),
        getIt.get<UpdatePasswordUseCase>(),
      ),
    );

    // ========== Home feature ==========
    getIt.registerFactory<DevelopersCubit>(
      () => DevelopersCubit(getIt.get<GetDevelopersUseCase>()),
    );

    // ========== Notifications feature ==========
    getIt.registerFactory<NotificationsCubit>(
      () => NotificationsCubit(
        sendNotificationUseCase: getIt.get<SendNotificationUseCase>(),
        saveNotificationsToFirebaseFirestoreUseCase:
            getIt.get<SaveNotificationsToFirebaseFirestoreUseCase>(),
        clearNotificationsHistoryUseCase:
            getIt.get<ClearNotificationsHistoryUseCase>(),
        deleteNotificationUseCase: getIt.get<DeleteNotificationUseCase>(),
      ),
    );
  }
}
