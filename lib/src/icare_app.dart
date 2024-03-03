import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/app_routes_observer.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_themes.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/features/medical/presentation/cubits/medical_cubit.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';

class ICareApp extends StatelessWidget {
  const ICareApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<MedicalCubit>(
            // lazy: false,
            create: (_) => getIt.get<MedicalCubit>()..getMedical(),
          ),
          BlocProvider<UserCubit>(
            create: (_) => getIt.get<UserCubit>()..getUserData(),
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: AppStrings.appTitle,
          theme: AppThemes.lightTheme(context),
          routerConfig: getIt.get<AppRouter>().config(
                navigatorObservers: () => [
                  AppRoutesObserver(),
                  AutoRouteObserver(),
                ],
              ),
        ),
      ),
    );
  }
}
