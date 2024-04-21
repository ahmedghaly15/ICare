part of '../../../dependency_injection.dart';

class SetupDIForUseCases {
  static void setup() {
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
    getIt.registerLazySingleton<GetEmergencyDiseasesUseCase>(
      () => GetEmergencyDiseasesUseCase(getIt.get<MedicalRepo>()),
    );
    getIt.registerLazySingleton<GetMedicalInfoUseCase>(
      () => GetMedicalInfoUseCase(getIt.get<MedicalRepo>()),
    );

    // ========== User feature ==========
    getIt.registerLazySingleton<GetUserDataUseCase>(
      () => GetUserDataUseCase(getIt.get<UserRepo>()),
    );
    getIt.registerLazySingleton<GetAllUsersUseCase>(
      () => GetAllUsersUseCase(getIt.get<UserRepo>()),
    );
    getIt.registerLazySingleton<FollowUseCase>(
      () => FollowUseCase(getIt.get<UserRepo>()),
    );
    getIt.registerLazySingleton<UnFollowUseCase>(
      () => UnFollowUseCase(getIt.get<UserRepo>()),
    );
    getIt.registerLazySingleton<GetFollowersUseCase>(
      () => GetFollowersUseCase(getIt.get<UserRepo>()),
    );
    getIt.registerLazySingleton<GetFollowingUseCase>(
      () => GetFollowingUseCase(getIt.get<UserRepo>()),
    );
    getIt.registerLazySingleton<SignOutUseCase>(
      () => SignOutUseCase(getIt.get<UserRepo>()),
    );

    // ========== EmergencyDiseaseDetails feature ==========
    getIt.registerLazySingleton<GetEmergencyDiseaseDetailsUseCase>(
      () => GetEmergencyDiseaseDetailsUseCase(
          getIt.get<EmergencyDiseaseDetailsRepo>()),
    );

    // ========== MedicalInfoDiseaseDetails feature ==========
    getIt.registerLazySingleton<GetMedicalInfoDiseaseDetailsUseCase>(
      () => GetMedicalInfoDiseaseDetailsUseCase(
        getIt.get<MedicalInfoDiseaseDetailsRepo>(),
      ),
    );

    // ========== BabyCryPredictor feature ==========
    getIt.registerLazySingleton<BabyCryPredictorUseCase>(
      () => BabyCryPredictorUseCase(getIt.get<BabyCryPredictorRepo>()),
    );

    // ========== ICareBot feature ==========
    getIt.registerLazySingleton<AskICareBotUseCase>(
      () => AskICareBotUseCase(getIt.get<ICareBotRepo>()),
    );
    getIt.registerLazySingleton<BookmarkICareBotMessageUseCase>(
      () => BookmarkICareBotMessageUseCase(getIt.get<ICareBotRepo>()),
    );
    getIt.registerLazySingleton<RetrieveICareBotBookmarksUseCase>(
      () => RetrieveICareBotBookmarksUseCase(getIt.get<ICareBotRepo>()),
    );
    getIt.registerLazySingleton<DeleteBookmarkUseCase>(
      () => DeleteBookmarkUseCase(getIt.get<ICareBotRepo>()),
    );

    // ========== TinyTales feature ==========
    getIt.registerLazySingleton<CreateTinyTaleUseCase>(
      () => CreateTinyTaleUseCase(getIt.get<TinyTalesRepo>()),
    );
    getIt.registerLazySingleton<GetTinyTalesUseCase>(
      () => GetTinyTalesUseCase(getIt.get<TinyTalesRepo>()),
    );
    getIt.registerLazySingleton<LikeTinyTaleUseCase>(
      () => LikeTinyTaleUseCase(getIt.get<TinyTalesRepo>()),
    );
    getIt.registerLazySingleton<UnLikeTinyTaleUseCase>(
      () => UnLikeTinyTaleUseCase(getIt.get<TinyTalesRepo>()),
    );
    getIt.registerLazySingleton<DeleteTinyTaleUseCase>(
      () => DeleteTinyTaleUseCase(getIt.get<TinyTalesRepo>()),
    );
    getIt.registerLazySingleton<UploadTinyTaleImageUseCase>(
      () => UploadTinyTaleImageUseCase(getIt.get<TinyTalesRepo>()),
    );
    getIt.registerLazySingleton<IsTinyTaleLikeByMeUseCase>(
      () => IsTinyTaleLikeByMeUseCase(getIt.get<TinyTalesRepo>()),
    );
    getIt.registerLazySingleton<BookmarkTinyTaleUseCase>(
      () => BookmarkTinyTaleUseCase(getIt.get<TinyTalesRepo>()),
    );
    getIt.registerLazySingleton<UnBookmarkTinyTaleUseCase>(
      () => UnBookmarkTinyTaleUseCase(getIt.get<TinyTalesRepo>()),
    );
    getIt.registerLazySingleton<GetBookmarkedTinyTalesUseCase>(
      () => GetBookmarkedTinyTalesUseCase(getIt.get<TinyTalesRepo>()),
    );
    getIt.registerLazySingleton<IsTinyTaleBookmarkedByMeUseCase>(
      () => IsTinyTaleBookmarkedByMeUseCase(getIt.get<TinyTalesRepo>()),
    );
    getIt.registerLazySingleton<GetPeopleWhoLikedUseCase>(
      () => GetPeopleWhoLikedUseCase(getIt.get<TinyTalesRepo>()),
    );

    // ========== Tips feature ==========
    getIt.registerLazySingleton<GetRandomTipUseCase>(
      () => GetRandomTipUseCase(getIt.get<TipsRepo>()),
    );

    // ========== Speech Therapy feature ==========
    getIt.registerLazySingleton<GetLevelOneTrainingDataUseCase>(
      () => GetLevelOneTrainingDataUseCase(getIt.get<SpeechTherapyRepo>()),
    );
    getIt.registerLazySingleton<MarkUseCase>(
      () => MarkUseCase(getIt.get<SpeechTherapyRepo>()),
    );
    getIt.registerLazySingleton<ScoreUseCase>(
      () => ScoreUseCase(getIt.get<SpeechTherapyRepo>()),
    );
    getIt.registerLazySingleton<GetLevelTwoTrainingDataUseCase>(
      () => GetLevelTwoTrainingDataUseCase(getIt.get<SpeechTherapyRepo>()),
    );
    getIt.registerLazySingleton<GetAdvancedLevelTrainingDataUseCase>(
      () => GetAdvancedLevelTrainingDataUseCase(getIt.get<SpeechTherapyRepo>()),
    );
    getIt.registerLazySingleton<AdvancedLevelMarkingUseCase>(
      () => AdvancedLevelMarkingUseCase(getIt.get<SpeechTherapyRepo>()),
    );

    // ========== Comments feature ==========
    getIt.registerLazySingleton<StreamCommentsUseCase>(
      () => StreamCommentsUseCase(getIt.get<CommentsRepo>()),
    );
    getIt.registerLazySingleton<TypeNewCommentUseCase>(
      () => TypeNewCommentUseCase(getIt.get<CommentsRepo>()),
    );
    getIt.registerLazySingleton<DeleteCommentUseCase>(
      () => DeleteCommentUseCase(getIt.get<CommentsRepo>()),
    );
    getIt.registerLazySingleton<UploadCommentImageUseCase>(
      () => UploadCommentImageUseCase(getIt.get<CommentsRepo>()),
    );
    getIt.registerLazySingleton<LikeCommentUseCase>(
      () => LikeCommentUseCase(getIt.get<CommentsRepo>()),
    );
    getIt.registerLazySingleton<UnLikeCommentUseCase>(
      () => UnLikeCommentUseCase(getIt.get<CommentsRepo>()),
    );
    getIt.registerLazySingleton<IsCommentLikedByMeUseCase>(
      () => IsCommentLikedByMeUseCase(getIt.get<CommentsRepo>()),
    );
    getIt.registerLazySingleton<GetCommentRepliesUseCase>(
      () => GetCommentRepliesUseCase(getIt.get<CommentRepliesRepo>()),
    );
    getIt.registerLazySingleton<DeleteCommentReplyUseCase>(
      () => DeleteCommentReplyUseCase(getIt.get<CommentRepliesRepo>()),
    );
    getIt.registerLazySingleton<LikeCommentReplyUseCase>(
      () => LikeCommentReplyUseCase(getIt.get<CommentRepliesRepo>()),
    );
    getIt.registerLazySingleton<UnLikeCommentReplyUseCase>(
      () => UnLikeCommentReplyUseCase(getIt.get<CommentRepliesRepo>()),
    );
    getIt.registerLazySingleton<IsCommentReplyLikedByMeUseCase>(
      () => IsCommentReplyLikedByMeUseCase(getIt.get<CommentRepliesRepo>()),
    );
    getIt.registerLazySingleton<TypeNewCommentReplyUseCase>(
      () => TypeNewCommentReplyUseCase(getIt.get<CommentRepliesRepo>()),
    );
    getIt.registerLazySingleton<UploadCommentReplyImageUseCase>(
      () => UploadCommentReplyImageUseCase(getIt.get<CommentRepliesRepo>()),
    );

    // ========== Chat feature ==========
    getIt.registerLazySingleton<SendMessageUseCase>(
      () => SendMessageUseCase(getIt.get<ChatRepo>()),
    );
    getIt.registerLazySingleton<UploadMessageImageUseCase>(
      () => UploadMessageImageUseCase(getIt.get<ChatRepo>()),
    );
    getIt.registerLazySingleton<GetChatsUseCase>(
      () => GetChatsUseCase(getIt.get<ChatRepo>()),
    );

    // ========== Search feature ==========
    getIt.registerLazySingleton<SearchUsersUseCase>(
      () => SearchUsersUseCase(getIt.get<SearchRepo>()),
    );

    // ========== Edit Profile feature ==========
    getIt.registerLazySingleton<UpdateUserUseCase>(
      () => UpdateUserUseCase(getIt.get<EditProfileRepo>()),
    );
    getIt.registerLazySingleton<UploadNewProfileImageUseCase>(
      () => UploadNewProfileImageUseCase(getIt.get<EditProfileRepo>()),
    );
    getIt.registerLazySingleton<UpdatePasswordUseCase>(
      () => UpdatePasswordUseCase(getIt.get<EditProfileRepo>()),
    );
  }
}
