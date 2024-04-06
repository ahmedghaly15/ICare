import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:icare/app_routes_observer.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_themes.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/bookmark/bookmark_cubit.dart';
import 'package:icare/src/features/medical/presentation/cubits/medical_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_cubit.dart';
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
          BlocProvider<UserCubit>(
            create: (context) => getIt.get<UserCubit>()..getUserData(),
          ),
          BlocProvider<MedicalCubit>(
            create: (_) => getIt.get<MedicalCubit>()..getMedical(),
          ),
          BlocProvider<TinyTalesCubit>(
            create: (_) => getIt.get<TinyTalesCubit>()..getTinyTales(),
          ),
          BlocProvider<TipsCubit>(
            create: (_) => getIt.get<TipsCubit>()..getRandomTip(),
          ),
          BlocProvider<BookmarkCubit>(
            create: (_) => getIt.get<BookmarkCubit>(),
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
