// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Auth(),
      );
    },
    BabyCryPredictorRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const BabyCryPredictorView()),
      );
    },
    BookmarkedTinyTalesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BookmarkedTinyTalesView(),
      );
    },
    BookmarksRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BookmarksView(),
      );
    },
    BottomNavBarRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomNavBar(),
      );
    },
    ChatDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ChatDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatDetailsView(
          key: args.key,
          receiver: args.receiver,
        ),
      );
    },
    ChatsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatsView(),
      );
    },
    CommentRepliesRoute.name: (routeData) {
      final args = routeData.argsAs<CommentRepliesRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: CommentRepliesView(
          key: args.key,
          params: args.params,
        )),
      );
    },
    CommentsRoute.name: (routeData) {
      final args = routeData.argsAs<CommentsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: CommentsView(
          key: args.key,
          tinyTaleId: args.tinyTaleId,
        )),
      );
    },
    EditProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const EditProfileView()),
      );
    },
    EmergencyDiseaseDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<EmergencyDiseaseDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: EmergencyDiseaseDetailsView(
          key: args.key,
          diseaseData: args.diseaseData,
        )),
      );
    },
    EntryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EntryView(),
      );
    },
    FollowersRoute.name: (routeData) {
      final args = routeData.argsAs<FollowersRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FollowersView(
          key: args.key,
          user: args.user,
        ),
      );
    },
    FollowingRoute.name: (routeData) {
      final args = routeData.argsAs<FollowingRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FollowingView(
          key: args.key,
          user: args.user,
        ),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const ForgotPasswordView()),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const HomeView()),
      );
    },
    ICareBotRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const ICareBotView()),
      );
    },
    ICareCommunityRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ICareCommunityView(),
      );
    },
    LayoutRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LayoutView(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const LoginView()),
      );
    },
    MedicalInfoCategoryDiseasesRoute.name: (routeData) {
      final args = routeData.argsAs<MedicalInfoCategoryDiseasesRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MedicalInfoCategoryDiseasesView(
          key: args.key,
          diseaseType: args.diseaseType,
          diseases: args.diseases,
        ),
      );
    },
    MedicalInfoDiseaseDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<MedicalInfoDiseaseDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: MedicalInfoDiseaseDetailsView(
          key: args.key,
          diseaseData: args.diseaseData,
          diseaseType: args.diseaseType,
        )),
      );
    },
    MedicalRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const MedicalView()),
      );
    },
    NewTinyTaleRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const NewTinyTaleView()),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const OnboardingView()),
      );
    },
    PeopleWhoLikedRoute.name: (routeData) {
      final args = routeData.argsAs<PeopleWhoLikedRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PeopleWhoLikedView(
          key: args.key,
          tinyTaleId: args.tinyTaleId,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileView(),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const RegisterView()),
      );
    },
    SearchUsersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const SearchUsersView()),
      );
    },
    SpeechTherapyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SpeechTherapyView(),
      );
    },
    StartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StartView(),
      );
    },
    UserProfileRoute.name: (routeData) {
      final args = routeData.argsAs<UserProfileRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UserProfileView(
          key: args.key,
          user: args.user,
        ),
      );
    },
  };
}

/// generated route for
/// [Auth]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BabyCryPredictorView]
class BabyCryPredictorRoute extends PageRouteInfo<void> {
  const BabyCryPredictorRoute({List<PageRouteInfo>? children})
      : super(
          BabyCryPredictorRoute.name,
          initialChildren: children,
        );

  static const String name = 'BabyCryPredictorRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BookmarkedTinyTalesView]
class BookmarkedTinyTalesRoute extends PageRouteInfo<void> {
  const BookmarkedTinyTalesRoute({List<PageRouteInfo>? children})
      : super(
          BookmarkedTinyTalesRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookmarkedTinyTalesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BookmarksView]
class BookmarksRoute extends PageRouteInfo<void> {
  const BookmarksRoute({List<PageRouteInfo>? children})
      : super(
          BookmarksRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookmarksRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BottomNavBar]
class BottomNavBarRoute extends PageRouteInfo<void> {
  const BottomNavBarRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavBarRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatDetailsView]
class ChatDetailsRoute extends PageRouteInfo<ChatDetailsRouteArgs> {
  ChatDetailsRoute({
    Key? key,
    required ICareUser receiver,
    List<PageRouteInfo>? children,
  }) : super(
          ChatDetailsRoute.name,
          args: ChatDetailsRouteArgs(
            key: key,
            receiver: receiver,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatDetailsRoute';

  static const PageInfo<ChatDetailsRouteArgs> page =
      PageInfo<ChatDetailsRouteArgs>(name);
}

class ChatDetailsRouteArgs {
  const ChatDetailsRouteArgs({
    this.key,
    required this.receiver,
  });

  final Key? key;

  final ICareUser receiver;

  @override
  String toString() {
    return 'ChatDetailsRouteArgs{key: $key, receiver: $receiver}';
  }
}

/// generated route for
/// [ChatsView]
class ChatsRoute extends PageRouteInfo<void> {
  const ChatsRoute({List<PageRouteInfo>? children})
      : super(
          ChatsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CommentRepliesView]
class CommentRepliesRoute extends PageRouteInfo<CommentRepliesRouteArgs> {
  CommentRepliesRoute({
    Key? key,
    required CommentRepliesViewParams params,
    List<PageRouteInfo>? children,
  }) : super(
          CommentRepliesRoute.name,
          args: CommentRepliesRouteArgs(
            key: key,
            params: params,
          ),
          initialChildren: children,
        );

  static const String name = 'CommentRepliesRoute';

  static const PageInfo<CommentRepliesRouteArgs> page =
      PageInfo<CommentRepliesRouteArgs>(name);
}

class CommentRepliesRouteArgs {
  const CommentRepliesRouteArgs({
    this.key,
    required this.params,
  });

  final Key? key;

  final CommentRepliesViewParams params;

  @override
  String toString() {
    return 'CommentRepliesRouteArgs{key: $key, params: $params}';
  }
}

/// generated route for
/// [CommentsView]
class CommentsRoute extends PageRouteInfo<CommentsRouteArgs> {
  CommentsRoute({
    Key? key,
    required String tinyTaleId,
    List<PageRouteInfo>? children,
  }) : super(
          CommentsRoute.name,
          args: CommentsRouteArgs(
            key: key,
            tinyTaleId: tinyTaleId,
          ),
          initialChildren: children,
        );

  static const String name = 'CommentsRoute';

  static const PageInfo<CommentsRouteArgs> page =
      PageInfo<CommentsRouteArgs>(name);
}

class CommentsRouteArgs {
  const CommentsRouteArgs({
    this.key,
    required this.tinyTaleId,
  });

  final Key? key;

  final String tinyTaleId;

  @override
  String toString() {
    return 'CommentsRouteArgs{key: $key, tinyTaleId: $tinyTaleId}';
  }
}

/// generated route for
/// [EditProfileView]
class EditProfileRoute extends PageRouteInfo<void> {
  const EditProfileRoute({List<PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EmergencyDiseaseDetailsView]
class EmergencyDiseaseDetailsRoute
    extends PageRouteInfo<EmergencyDiseaseDetailsRouteArgs> {
  EmergencyDiseaseDetailsRoute({
    Key? key,
    required DiseaseData diseaseData,
    List<PageRouteInfo>? children,
  }) : super(
          EmergencyDiseaseDetailsRoute.name,
          args: EmergencyDiseaseDetailsRouteArgs(
            key: key,
            diseaseData: diseaseData,
          ),
          initialChildren: children,
        );

  static const String name = 'EmergencyDiseaseDetailsRoute';

  static const PageInfo<EmergencyDiseaseDetailsRouteArgs> page =
      PageInfo<EmergencyDiseaseDetailsRouteArgs>(name);
}

class EmergencyDiseaseDetailsRouteArgs {
  const EmergencyDiseaseDetailsRouteArgs({
    this.key,
    required this.diseaseData,
  });

  final Key? key;

  final DiseaseData diseaseData;

  @override
  String toString() {
    return 'EmergencyDiseaseDetailsRouteArgs{key: $key, diseaseData: $diseaseData}';
  }
}

/// generated route for
/// [EntryView]
class EntryRoute extends PageRouteInfo<void> {
  const EntryRoute({List<PageRouteInfo>? children})
      : super(
          EntryRoute.name,
          initialChildren: children,
        );

  static const String name = 'EntryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FollowersView]
class FollowersRoute extends PageRouteInfo<FollowersRouteArgs> {
  FollowersRoute({
    Key? key,
    required ICareUser user,
    List<PageRouteInfo>? children,
  }) : super(
          FollowersRoute.name,
          args: FollowersRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'FollowersRoute';

  static const PageInfo<FollowersRouteArgs> page =
      PageInfo<FollowersRouteArgs>(name);
}

class FollowersRouteArgs {
  const FollowersRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final ICareUser user;

  @override
  String toString() {
    return 'FollowersRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [FollowingView]
class FollowingRoute extends PageRouteInfo<FollowingRouteArgs> {
  FollowingRoute({
    Key? key,
    required ICareUser user,
    List<PageRouteInfo>? children,
  }) : super(
          FollowingRoute.name,
          args: FollowingRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'FollowingRoute';

  static const PageInfo<FollowingRouteArgs> page =
      PageInfo<FollowingRouteArgs>(name);
}

class FollowingRouteArgs {
  const FollowingRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final ICareUser user;

  @override
  String toString() {
    return 'FollowingRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [ForgotPasswordView]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ICareBotView]
class ICareBotRoute extends PageRouteInfo<void> {
  const ICareBotRoute({List<PageRouteInfo>? children})
      : super(
          ICareBotRoute.name,
          initialChildren: children,
        );

  static const String name = 'ICareBotRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ICareCommunityView]
class ICareCommunityRoute extends PageRouteInfo<void> {
  const ICareCommunityRoute({List<PageRouteInfo>? children})
      : super(
          ICareCommunityRoute.name,
          initialChildren: children,
        );

  static const String name = 'ICareCommunityRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LayoutView]
class LayoutRoute extends PageRouteInfo<void> {
  const LayoutRoute({List<PageRouteInfo>? children})
      : super(
          LayoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'LayoutRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginView]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MedicalInfoCategoryDiseasesView]
class MedicalInfoCategoryDiseasesRoute
    extends PageRouteInfo<MedicalInfoCategoryDiseasesRouteArgs> {
  MedicalInfoCategoryDiseasesRoute({
    Key? key,
    required String diseaseType,
    required List<DiseaseData> diseases,
    List<PageRouteInfo>? children,
  }) : super(
          MedicalInfoCategoryDiseasesRoute.name,
          args: MedicalInfoCategoryDiseasesRouteArgs(
            key: key,
            diseaseType: diseaseType,
            diseases: diseases,
          ),
          initialChildren: children,
        );

  static const String name = 'MedicalInfoCategoryDiseasesRoute';

  static const PageInfo<MedicalInfoCategoryDiseasesRouteArgs> page =
      PageInfo<MedicalInfoCategoryDiseasesRouteArgs>(name);
}

class MedicalInfoCategoryDiseasesRouteArgs {
  const MedicalInfoCategoryDiseasesRouteArgs({
    this.key,
    required this.diseaseType,
    required this.diseases,
  });

  final Key? key;

  final String diseaseType;

  final List<DiseaseData> diseases;

  @override
  String toString() {
    return 'MedicalInfoCategoryDiseasesRouteArgs{key: $key, diseaseType: $diseaseType, diseases: $diseases}';
  }
}

/// generated route for
/// [MedicalInfoDiseaseDetailsView]
class MedicalInfoDiseaseDetailsRoute
    extends PageRouteInfo<MedicalInfoDiseaseDetailsRouteArgs> {
  MedicalInfoDiseaseDetailsRoute({
    Key? key,
    required DiseaseData diseaseData,
    required String diseaseType,
    List<PageRouteInfo>? children,
  }) : super(
          MedicalInfoDiseaseDetailsRoute.name,
          args: MedicalInfoDiseaseDetailsRouteArgs(
            key: key,
            diseaseData: diseaseData,
            diseaseType: diseaseType,
          ),
          initialChildren: children,
        );

  static const String name = 'MedicalInfoDiseaseDetailsRoute';

  static const PageInfo<MedicalInfoDiseaseDetailsRouteArgs> page =
      PageInfo<MedicalInfoDiseaseDetailsRouteArgs>(name);
}

class MedicalInfoDiseaseDetailsRouteArgs {
  const MedicalInfoDiseaseDetailsRouteArgs({
    this.key,
    required this.diseaseData,
    required this.diseaseType,
  });

  final Key? key;

  final DiseaseData diseaseData;

  final String diseaseType;

  @override
  String toString() {
    return 'MedicalInfoDiseaseDetailsRouteArgs{key: $key, diseaseData: $diseaseData, diseaseType: $diseaseType}';
  }
}

/// generated route for
/// [MedicalView]
class MedicalRoute extends PageRouteInfo<void> {
  const MedicalRoute({List<PageRouteInfo>? children})
      : super(
          MedicalRoute.name,
          initialChildren: children,
        );

  static const String name = 'MedicalRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewTinyTaleView]
class NewTinyTaleRoute extends PageRouteInfo<void> {
  const NewTinyTaleRoute({List<PageRouteInfo>? children})
      : super(
          NewTinyTaleRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewTinyTaleRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingView]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PeopleWhoLikedView]
class PeopleWhoLikedRoute extends PageRouteInfo<PeopleWhoLikedRouteArgs> {
  PeopleWhoLikedRoute({
    Key? key,
    required String tinyTaleId,
    List<PageRouteInfo>? children,
  }) : super(
          PeopleWhoLikedRoute.name,
          args: PeopleWhoLikedRouteArgs(
            key: key,
            tinyTaleId: tinyTaleId,
          ),
          initialChildren: children,
        );

  static const String name = 'PeopleWhoLikedRoute';

  static const PageInfo<PeopleWhoLikedRouteArgs> page =
      PageInfo<PeopleWhoLikedRouteArgs>(name);
}

class PeopleWhoLikedRouteArgs {
  const PeopleWhoLikedRouteArgs({
    this.key,
    required this.tinyTaleId,
  });

  final Key? key;

  final String tinyTaleId;

  @override
  String toString() {
    return 'PeopleWhoLikedRouteArgs{key: $key, tinyTaleId: $tinyTaleId}';
  }
}

/// generated route for
/// [ProfileView]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterView]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchUsersView]
class SearchUsersRoute extends PageRouteInfo<void> {
  const SearchUsersRoute({List<PageRouteInfo>? children})
      : super(
          SearchUsersRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchUsersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SpeechTherapyView]
class SpeechTherapyRoute extends PageRouteInfo<void> {
  const SpeechTherapyRoute({List<PageRouteInfo>? children})
      : super(
          SpeechTherapyRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpeechTherapyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StartView]
class StartRoute extends PageRouteInfo<void> {
  const StartRoute({List<PageRouteInfo>? children})
      : super(
          StartRoute.name,
          initialChildren: children,
        );

  static const String name = 'StartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserProfileView]
class UserProfileRoute extends PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({
    Key? key,
    required ICareUser user,
    List<PageRouteInfo>? children,
  }) : super(
          UserProfileRoute.name,
          args: UserProfileRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'UserProfileRoute';

  static const PageInfo<UserProfileRouteArgs> page =
      PageInfo<UserProfileRouteArgs>(name);
}

class UserProfileRouteArgs {
  const UserProfileRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final ICareUser user;

  @override
  String toString() {
    return 'UserProfileRouteArgs{key: $key, user: $user}';
  }
}
