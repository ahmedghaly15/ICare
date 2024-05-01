import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/access_collections.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';

void navigateToHomeAfterLoginOrRegister(
  BuildContext context,
  String data,
) async {
  Helper.uId = data;
  final String? mobileToken = await _getMobileToken();
  getIt
      .get<CacheHelper>()
      .saveData(key: AppStrings.cachedUserId, value: data)
      .then(
    (value) {
      _updateUserMobileToken(mobileToken).then((value) {
        context.read<UserCubit>().getUserData().then((value) async {
          context.router.pushAndPopUntil(
            const BottomNavBarRoute(),
            predicate: (route) => route.settings.name == BottomNavBarRoute.name,
          );
          await _updateMobileTokenInOtherCollections(mobileToken);
        });
      });
    },
  );
}

Future<String?> _getMobileToken() async {
  return await getIt.get<FirebaseMessaging>().getToken();
}

Future<void> _updateUserMobileToken(String? mobileToken) async {
  await accessUsersCollection()
      .doc(Helper.uId!)
      .update(_mobileTokenMap(mobileToken));
}

Future<void> _updateMobileTokenInOtherCollections(String? mobileToken) async {
  await _updateMobileTokenInTinyTales(mobileToken);
  await _updateMobileTokenInTinyTalesLikes(mobileToken);
  await _updateMobileTokenInComments(mobileToken);
  await _updateMobileTokenInCommentsLikes(mobileToken);
  await _updateMobileTokenInCommentsReplies(mobileToken);
  await _updateMobileTokenInCommentsRepliesLikes(mobileToken);
  await _updateMobileTokenInBookmarkedTinyTales(mobileToken);
  await _updateMobileTokenInOtherUsersFollowing(mobileToken);
  await _updateMobileTokenInOtherUsersFollowers(mobileToken);
  await _updateMobileTokenInChats(mobileToken);
}

Map<Object, Object?> _mobileTokenMap(String? mobileToken) =>
    {'mobileToken': mobileToken};

Future<void> _updateMobileTokenInTinyTales(String? mobileToken) async {
  final tinyTalesQuery = await accessTinyTalesCollection().get();

  for (final tinyTale in tinyTalesQuery.docs) {
    if (tinyTale.data()['user']?['uId'] == Helper.uId) {
      await accessTinyTalesCollection()
          .doc(tinyTale.id)
          .update(_updateOnlyUserMobileTokenMap(tinyTale, mobileToken));
    }
  }
}

Future<void> _updateMobileTokenInTinyTalesLikes(String? mobileToken) async {
  final tinyTalesQuery = await accessTinyTalesCollection().get();
  for (final tinyTale in tinyTalesQuery.docs) {
    final tinyTaleLikes =
        await accessTinyTaleLikesCollection(tinyTale.id).get();
    for (final like in tinyTaleLikes.docs) {
      if (like.id == Helper.uId) {
        await accessTinyTaleLikesCollection(tinyTale.id)
            .doc(Helper.uId)
            .update(_updateOnlyUserMobileTokenMap(like, mobileToken));
      }
    }
  }
}

Future<void> _updateMobileTokenInComments(String? mobileToken) async {
  final tinyTalesQuery = await accessTinyTalesCollection().get();
  for (final tinyTale in tinyTalesQuery.docs) {
    final comments = await accessCommentsCollection(tinyTale.id).get();
    for (final comment in comments.docs) {
      if (comment.data()['user']?['uId'] == Helper.uId) {
        await accessCommentsCollection(tinyTale.id)
            .doc(comment.id)
            .update(_updateOnlyUserMobileTokenMap(comment, mobileToken));
      }
    }
  }
}

Future<void> _updateMobileTokenInCommentsLikes(String? mobileToken) async {
  final tinyTalesQuery = await accessTinyTalesCollection().get();
  for (final tinyTale in tinyTalesQuery.docs) {
    final comments = await accessCommentsCollection(tinyTale.id).get();
    for (final comment in comments.docs) {
      final commentLikes =
          await accessCommentLikesCollection(tinyTale.id, comment.id).get();
      for (final like in commentLikes.docs) {
        if (like.id == Helper.uId) {
          await accessCommentLikesCollection(tinyTale.id, comment.id)
              .doc(Helper.uId)
              .update(_updateOnlyUserMobileTokenMap(like, mobileToken));
        }
      }
    }
  }
}

Future<void> _updateMobileTokenInCommentsReplies(String? mobileToken) async {
  final tinyTalesQuery = await accessTinyTalesCollection().get();
  for (final tinyTale in tinyTalesQuery.docs) {
    final comments = await accessCommentsCollection(tinyTale.id).get();
    for (final comment in comments.docs) {
      final commentReplies =
          await accessCommentRepliesCollection(tinyTale.id, comment.id).get();
      for (final reply in commentReplies.docs) {
        if (reply.data()['user']?['uId'] == Helper.uId) {
          await accessCommentRepliesCollection(tinyTale.id, comment.id)
              .doc(reply.id)
              .update(_updateOnlyUserMobileTokenMap(reply, mobileToken));
        }
      }
    }
  }
}

Future<void> _updateMobileTokenInCommentsRepliesLikes(
    String? mobileToken) async {
  final tinyTalesQuery = await accessTinyTalesCollection().get();
  for (final tinyTale in tinyTalesQuery.docs) {
    final comments = await accessCommentsCollection(tinyTale.id).get();
    for (final comment in comments.docs) {
      final commentReplies =
          await accessCommentRepliesCollection(tinyTale.id, comment.id).get();
      for (final reply in commentReplies.docs) {
        final commentRepliesLikes = await accessCommentRepliesLikesCollection(
                tinyTale.id, comment.id, reply.id)
            .get();
        for (final like in commentRepliesLikes.docs) {
          if (like.id == Helper.uId) {
            await accessCommentRepliesLikesCollection(
                    tinyTale.id, comment.id, reply.id)
                .doc(Helper.uId)
                .update(_updateOnlyUserMobileTokenMap(like, mobileToken));
          }
        }
      }
    }
  }
}

Future<void> _updateMobileTokenInBookmarkedTinyTales(
    String? mobileToken) async {
  final bookmarkedTinyTalesQuery =
      await accessBookmarkedTinyTalesCollection().get();
  for (final tinyTale in bookmarkedTinyTalesQuery.docs) {
    if (tinyTale.data()['user']?['uId'] == Helper.uId) {
      await accessBookmarkedTinyTalesCollection()
          .doc(tinyTale.id)
          .update(_updateOnlyUserMobileTokenMap(tinyTale, mobileToken));
    }
  }
}

Future<void> _updateMobileTokenInOtherUsersFollowing(
    String? mobileToken) async {
  final usersQuery = await accessUsersCollection().get();
  for (final queryUser in usersQuery.docs) {
    final followingQuery =
        await accessUserFollowingCollection(queryUser.id).get();
    for (final following in followingQuery.docs) {
      if (following.id == Helper.uId) {
        await accessUserFollowingCollection(queryUser.id)
            .doc(Helper.uId)
            .update(_mobileTokenMap(mobileToken));
      }
    }
  }
}

Future<void> _updateMobileTokenInOtherUsersFollowers(
    String? mobileToken) async {
  final usersQuery = await accessUsersCollection().get();
  for (final queryUser in usersQuery.docs) {
    final followersQuery =
        await accessUserFollowersCollection(queryUser.id).get();
    for (final follower in followersQuery.docs) {
      if (follower.id == Helper.uId) {
        await accessUserFollowersCollection(queryUser.id)
            .doc(Helper.uId)
            .update(_mobileTokenMap(mobileToken));
      }
    }
  }
}

Future<void> _updateMobileTokenInChats(String? mobileToken) async {
  final usersQuery = await accessUsersCollection().get();
  for (final queryUser in usersQuery.docs) {
    final chatQuery =
        await queryUser.reference.collection(AppStrings.chatsCollection).get();
    for (final chat in chatQuery.docs) {
      if (chat.id == Helper.uId) {
        await chat.reference.update(_mobileTokenMap(mobileToken));
      }
    }
  }
}

Map<Object, Object?> _updateOnlyUserMobileTokenMap(
  QueryDocumentSnapshot<Map<String, dynamic>> query,
  String? mobileToken,
) {
  return {
    'user': {
      ...query.data()['user'], // Keep existing user data
      'mobileToken': mobileToken, // Update mobileToken
    }
  };
}
