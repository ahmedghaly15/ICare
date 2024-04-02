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

    // ========== Tips feature ==========
    getIt.registerLazySingleton<GetRandomTipUseCase>(
      () => GetRandomTipUseCase(getIt.get<TipsRepo>()),
    );

    // ========== Speech Therapy feature ==========
    getIt.registerLazySingleton<GetLevelOneTrainingDataUseCase>(
      () => GetLevelOneTrainingDataUseCase(getIt.get<SpeechTherapyRepo>()),
    );
    getIt.registerLazySingleton<GetLevelOneExamUseCase>(
      () => GetLevelOneExamUseCase(getIt.get<SpeechTherapyRepo>()),
    );
    getIt.registerLazySingleton<MarkLevelOneUseCase>(
      () => MarkLevelOneUseCase(getIt.get<SpeechTherapyRepo>()),
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

    // ========== PeopleWhoLiked feature ==========
    getIt.registerLazySingleton<GetPeopleWhoLikedUseCase>(
      () => GetPeopleWhoLikedUseCase(getIt.get<PeopleWhoLikedRepo>()),
    );
  }
}
