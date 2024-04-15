import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/features/profile/presentation/cubits/photos/photos_cubit.dart';
import 'package:icare/src/features/profile/presentation/cubits/profile/profile_cubit.dart';

void navigateToCurrentUserProfile(BuildContext context) {
  context.read<ProfileCubit>().getUserTinyTales(Helper.uId!);
  context.read<PhotosCubit>().getUserPhotos(Helper.uId!);
  context.pushRoute(const ProfileRoute());
}
