import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/helpers/constants.dart';
import 'package:icare/src/core/models/icare_user.dart';

/// Navigates to the user profile screen or the current user's profile.
///
/// This method checks if the provided [user] ID is different from the current user ID.
/// If different, it navigates to the specified user's profile screen.
/// If the same, it navigates to the current user's profile screen if not already there.
///
/// [context] is the BuildContext used for navigation.
/// [user] is the ICareUser object representing the user whose profile should be displayed.
void navigateToUserProfile({
  required BuildContext context,
  required ICareUser user,
}) {
  if (user.uId! != Constants.uId) {
    context.pushRoute(UserProfileRoute(user: user));
  } else {
    if (context.router.current.name != ProfileRoute.name) {
      context.pushRoute(const ProfileRoute());
    }
  }
}
