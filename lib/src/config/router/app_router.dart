import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/features/auth/presentation/views/forgot_password_view.dart';
import 'package:icare/src/features/auth/presentation/views/login_view.dart';
import 'package:icare/src/features/auth/presentation/views/register_view.dart';
import 'package:icare/src/features/auth/presentation/views/reset_password_view.dart';
import 'package:icare/src/features/auth/presentation/views/verification_view.dart';
import 'package:icare/src/features/start/presentation/views/start_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: StartRoute.page,
        ),
        AutoRoute(
          page: AuthRoute.page,
          children: <AutoRoute>[
            _buildCustomRoute(
              initial: true,
              page: LoginRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
            _buildCustomRoute(page: RegisterRoute.page),
            _buildCustomRoute(page: ForgotPasswordRoute.page),
            _buildCustomRoute(page: VerificationRoute.page),
            _buildCustomRoute(page: ResetPasswordRoute.page),
          ],
        ),
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

@RoutePage(name: 'AuthRoute')
class Auth extends AutoRouter {
  const Auth({super.key});
}
