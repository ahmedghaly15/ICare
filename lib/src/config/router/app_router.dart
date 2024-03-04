import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:icare/src/config/router/routes_names.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/features/auth/presentation/views/forgot_password_view.dart';
import 'package:icare/src/features/auth/presentation/views/login_view.dart';
import 'package:icare/src/features/auth/presentation/views/register_view.dart';
import 'package:icare/src/features/baby/presentation/views/baby_view.dart';
import 'package:icare/src/features/bottom_nav_bar/presentation/views/layout_view.dart';
import 'package:icare/src/features/disease_details/presentation/views/emergency_disease_details_view.dart';
import 'package:icare/src/features/disease_details/presentation/views/medical_info_disease_details_view.dart';
import 'package:icare/src/features/emergency/presentation/views/emergency_diseases_view.dart';
import 'package:icare/src/features/entry/presentation/views/entry_view.dart';
import 'package:icare/src/features/home/home_view.dart';
import 'package:icare/src/features/medical/presentation/views/medical_view.dart';
import 'package:icare/src/features/medical_info/presentation/views/medical_info_category_diseases_view.dart';
import 'package:icare/src/features/medical_info/presentation/views/medical_info_view.dart';
import 'package:icare/src/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:icare/src/features/start/presentation/views/start_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
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
                AutoRoute(
                  page: MedicalRoute.page,
                ),
                AutoRoute(page: BabyRoute.page),
              ],
            ),
          ],
        ),
        _buildCustomRoute(
          page: EmergencyDiseasesRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        _buildCustomRoute(
          page: MedicalInfoRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        _buildCustomRoute(
          page: MedicalInfoCategoryDiseasesRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        _buildCustomRoute(
          page: EmergencyDiseaseDetailsRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        _buildCustomRoute(
          page: MedicalInfoDiseaseDetailsRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        )
      ];

  CustomRoute _buildCustomRoute({
    bool initial = false,
    required PageInfo<dynamic> page,
    List<AutoRoute>? children,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transitionsBuilder,
  }) {
    return CustomRoute(
      initial: initial,
      page: page,
      transitionsBuilder: transitionsBuilder ?? AppConstants.transitionsBuilder,
      durationInMilliseconds: AppConstants.transitionDuration,
      children: children,
    );
  }
}

@RoutePage(name: RoutesNames.authRoute)
class Auth extends AutoRouter {
  const Auth({super.key});
}

@RoutePage(name: RoutesNames.bottomNavBarRoute)
class BottomNavBar extends AutoRouter {
  const BottomNavBar({super.key});
}
