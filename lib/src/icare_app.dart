import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/app_routes_observer.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_themes.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/size_config.dart';

class ICareApp extends StatelessWidget {
  const ICareApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appTitle,
        theme: AppThemes.lightTheme,
        routerConfig: getIt.get<AppRouter>().config(
              navigatorObservers: () => [
                AppRoutesObserver(),
                AutoRouteObserver(),
              ],
            ),
      ),
    );
  }
}
