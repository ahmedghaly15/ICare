import 'package:auto_route/auto_route.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/features/auth/presentation/views/login_view.dart';
import 'package:icare/src/features/splash/presentation/views/splash_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: SplashRoute.page,
        ),
        AutoRoute(
          page: AuthRoute.page,
          children: <AutoRoute>[
            AutoRoute(
              page: LoginRoute.page,
              initial: true,
            ),
          ],
        ),
      ];

  CustomRoute _buildCustomRoute({
    bool initial = false,
    required PageInfo<dynamic> page,
    List<AutoRoute>? children,
  }) {
    return CustomRoute(
      initial: initial,
      page: page,
      transitionsBuilder: AppConstants.transitionsBuilder,
      durationInMilliseconds: AppConstants.transitionDuration,
      children: children,
    );
  }
}

@RoutePage(name: 'AuthRoute')
class Auth extends AutoRouter {
  const Auth({super.key});
}
