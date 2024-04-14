import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/features/profile/presentation/cubits/photos/photos_cubit.dart';
import 'package:icare/src/features/profile/presentation/cubits/profile/profile_cubit.dart';

void navigateToUserProfile({
  required BuildContext context,
  required ICareUser user,
}) {
  if (user.uId! != Helper.uId) {
    context.read<ProfileCubit>().getUserTinyTales(user.uId!);
    context.read<PhotosCubit>().getUserPhotos(user.uId!);
    context.pushRoute(UserProfileRoute(user: user));
  }
}
