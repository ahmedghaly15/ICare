import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/models/icare_user.dart';

void navigateToUserProfile({
  required BuildContext context,
  required ICareUser user,
}) {
  if (user.uId! != Helper.uId) {
    context.pushRoute(UserProfileRoute(user: user));
  } else {
    context.pushRoute(const ProfileRoute());
  }
}
