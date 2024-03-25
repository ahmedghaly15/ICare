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
import 'package:icare/src/features/baby_cry_predictor/presentation/views/baby_cry_predictor_view.dart';
import 'package:icare/src/features/disease_details/presentation/views/emergency_disease_details_view.dart';
import 'package:icare/src/features/disease_details/presentation/views/medical_info_disease_details_view.dart';
import 'package:icare/src/features/emergency/presentation/views/emergency_diseases_view.dart';
import 'package:icare/src/features/entry/presentation/views/entry_view.dart';
import 'package:icare/src/features/home/presentation/views/home_view.dart';
import 'package:icare/src/features/icare_bot/presentation/views/bookmarks_view.dart';
import 'package:icare/src/features/icare_bot/presentation/views/icare_bot_view.dart';
import 'package:icare/src/features/medical/presentation/views/medical_view.dart';
import 'package:icare/src/features/medical_info/presentation/views/medical_info_category_diseases_view.dart';
import 'package:icare/src/features/medical_info/presentation/views/medical_info_view.dart';
import 'package:icare/src/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:icare/src/features/start/presentation/views/start_view.dart';

part 'app_router.gr.dart';
part 'app_routes.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => appRoutes;
}

@RoutePage(name: RoutesNames.authRoute)
class Auth extends AutoRouter {
  const Auth({super.key});
}

@RoutePage(name: RoutesNames.bottomNavBarRoute)
class BottomNavBar extends AutoRouter {
  const BottomNavBar({super.key});
}
