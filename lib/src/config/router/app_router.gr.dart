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
    BabyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BabyView(),
      );
    },
    BottomNavBarRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomNavBar(),
      );
    },
    CryTranslatorRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CryTranslatorView(),
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
    EmergencyDiseasesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const EmergencyDiseasesView()),
      );
    },
    EntryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EntryView(),
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
        child: const HomeView(),
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
    MedicalInfoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const MedicalInfoView()),
      );
    },
    MedicalRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MedicalView(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const OnboardingView()),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const RegisterView()),
      );
    },
    StartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StartView(),
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
/// [BabyView]
class BabyRoute extends PageRouteInfo<void> {
  const BabyRoute({List<PageRouteInfo>? children})
      : super(
          BabyRoute.name,
          initialChildren: children,
        );

  static const String name = 'BabyRoute';

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
/// [CryTranslatorView]
class CryTranslatorRoute extends PageRouteInfo<void> {
  const CryTranslatorRoute({List<PageRouteInfo>? children})
      : super(
          CryTranslatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'CryTranslatorRoute';

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
/// [EmergencyDiseasesView]
class EmergencyDiseasesRoute extends PageRouteInfo<void> {
  const EmergencyDiseasesRoute({List<PageRouteInfo>? children})
      : super(
          EmergencyDiseasesRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmergencyDiseasesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [MedicalInfoView]
class MedicalInfoRoute extends PageRouteInfo<void> {
  const MedicalInfoRoute({List<PageRouteInfo>? children})
      : super(
          MedicalInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'MedicalInfoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
