import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:icare/app_routes_observer.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/themes_cubit.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/features/notifications/presentation/cubits/notifications_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
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
            create: (_) => getIt.get<UserCubit>(),
          ),
          BlocProvider<TinyTalesCubit>(
            create: (_) => getIt.get<TinyTalesCubit>(),
          ),
          BlocProvider<SpeechTherapyCubit>(
            create: (_) => getIt.get<SpeechTherapyCubit>(),
          ),
          BlocProvider<ThemesCubit>(
            create: (_) => getIt.get<ThemesCubit>(),
          ),
          BlocProvider<NotificationsCubit>(
            create: (_) => getIt.get<NotificationsCubit>(),
          ),
        ],
        child: BlocBuilder<ThemesCubit, ThemeData>(
          buildWhen: (previous, current) => previous != current,
          builder: (context, themeState) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: AppStrings.appTitle,
              theme: themeState,
              routerConfig: getIt.get<AppRouter>().config(
                    navigatorObservers: () => [
                      AppRoutesObserver(),
                      AutoRouteObserver(),
                    ],
                  ),
            );
          },
        ),
      ),
    );
  }
}
