import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/app_routes_observer.dart';
import 'package:icare/src/config/routes/app_router.dart';
import 'package:icare/src/config/themes/app_themes.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/service_locator.dart';

class ICareApp extends StatelessWidget {
  const ICareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appTitle,
        theme: AppThemes.lightTheme,
        routerConfig: serviceLocator.get<AppRouter>().config(
              navigatorObservers: () => [
                AppRoutesObserver(),
                AutoRouteObserver(),
              ],
            ),
      ),
    );
  }
}
