import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';

void navigateToHomeAfterLoginOrRegister(BuildContext context, String data) {
  Helper.uId = data;

  getIt
      .get<CacheHelper>()
      .saveData(key: AppStrings.cachedUserId, value: data)
      .then(
    (value) {
      context.read<UserCubit>().getCurrentUser().then((value) {
        context.router.pushAndPopUntil(
          const BottomNavBarRoute(),
          predicate: (route) => route.settings.name == BottomNavBarRoute.name,
        );
      });
    },
  );
}
