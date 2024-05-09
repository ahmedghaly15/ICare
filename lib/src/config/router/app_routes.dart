part of 'app_router.dart';

List<AutoRoute> get appRoutes {
  return <AutoRoute>[
    AutoRoute(
      page: EntryRoute.page,
      initial: true,
    ),
    AutoRoute(page: OnboardingRoute.page),
    AutoRoute(page: StartRoute.page),
    AutoRoute(
      page: AuthRoute.page,
      children: <AutoRoute>[
        _buildCustomRoute(
          initial: true,
          page: LoginRoute.page,
        ),
        _buildCustomRoute(page: RegisterRoute.page),
        _buildCustomRoute(page: ForgotPasswordRoute.page),
      ],
    ),
    AutoRoute(
      page: BottomNavBarRoute.page,
      children: <AutoRoute>[
        AutoRoute(
          page: LayoutRoute.page,
          initial: true,
          children: <AutoRoute>[
            AutoRoute(
              page: HomeRoute.page,
              initial: true,
            ),
            AutoRoute(page: MedicalRoute.page),
            AutoRoute(page: ICareCommunityRoute.page),
          ],
        ),
      ],
    ),
    _buildCustomRoute(
      page: MedicalInfoCategoryDiseasesRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    _buildCustomRoute(
      page: EmergencyDiseaseDetailsRoute.page,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: AppUtils.slideBottomTransitionDuration,
    ),
    _buildCustomRoute(
      page: MedicalInfoDiseaseDetailsRoute.page,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: AppUtils.slideBottomTransitionDuration,
    ),
    _buildCustomRoute(page: BabyCryPredictorRoute.page),
    _buildCustomRoute(page: ICareBotRoute.page),
    _buildCustomRoute(
      page: BookmarksRoute.page,
      transitionsBuilder: AppUtils.drawerItemTransitionsBuilder,
    ),
    _buildCustomRoute(
      page: NewTinyTaleRoute.page,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: AppUtils.slideBottomTransitionDuration,
    ),
    _buildCustomRoute(page: CommentsRoute.page),
    _buildCustomRoute(page: CommentRepliesRoute.page),
    _buildCustomRoute(page: PeopleWhoLikedRoute.page),
    _buildCustomRoute(
      page: SearchUsersRoute.page,
      transitionsBuilder: AppUtils.drawerItemTransitionsBuilder,
    ),
    _buildCustomRoute(
      page: BookmarkedTinyTalesRoute.page,
      transitionsBuilder: AppUtils.drawerItemTransitionsBuilder,
    ),
    _buildCustomRoute(
      page: ChatDetailsRoute.page,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: AppUtils.slideBottomTransitionDuration,
    ),
    _buildCustomRoute(
      page: ChatsRoute.page,
      transitionsBuilder: AppUtils.drawerItemTransitionsBuilder,
    ),
    _buildCustomRoute(
      page: ProfileRoute.page,
      transitionsBuilder: AppUtils.drawerItemTransitionsBuilder,
    ),
    _buildCustomRoute(page: EditProfileRoute.page),
    _buildCustomRoute(page: UserProfileRoute.page),
    _buildCustomRoute(page: FollowersRoute.page),
    _buildCustomRoute(page: FollowingRoute.page),
    _buildCustomRoute(page: SpeechTherapyRoute.page),
    _buildCustomRoute(
      page: LevelOneRoute.page,
      transitionsBuilder: TransitionsBuilders.slideTop,
      durationInMilliseconds: AppUtils.slideTopTransitionDuration,
    ),
    _buildCustomRoute(page: TrainingOnLevelOneRoute.page),
    _buildCustomRoute(page: ScoreRoute.page),
    _buildCustomRoute(
      page: LevelTwoRoute.page,
      transitionsBuilder: TransitionsBuilders.slideTop,
      durationInMilliseconds: AppUtils.slideTopTransitionDuration,
    ),
    _buildCustomRoute(page: TrainingOnLevelTwoRoute.page),
    _buildCustomRoute(
      page: AdvancedLevelRoute.page,
      transitionsBuilder: TransitionsBuilders.slideTop,
      durationInMilliseconds: AppUtils.slideTopTransitionDuration,
    ),
    _buildCustomRoute(page: AdvancedLevelTrainingRoute.page),
    _buildCustomRoute(page: AdvancedLevelScoreRoute.page),
    _buildCustomRoute(
      page: DevelopersRoute.page,
      transitionsBuilder: AppUtils.drawerItemTransitionsBuilder,
    ),
    _buildCustomRoute(page: NotificationsRoute.page),
    _buildCustomRoute(page: NotificationTinyTaleRoute.page),
    _buildCustomRoute(page: NotificationCommentRoute.page),
    _buildCustomRoute(page: NotificationReplyRoute.page),
    _buildCustomRoute(page: BabyCryPredictorLeaveFeedbackRoute.page),
  ];
}

CustomRoute _buildCustomRoute({
  bool initial = false,
  required PageInfo<dynamic> page,
  List<AutoRoute>? children,
  Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
      transitionsBuilder,
  int? durationInMilliseconds,
}) {
  return CustomRoute(
    initial: initial,
    page: page,
    transitionsBuilder: transitionsBuilder ?? AppUtils.transitionsBuilder,
    durationInMilliseconds:
        durationInMilliseconds ?? AppUtils.transitionDuration,
    children: children,
  );
}
