import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/access_collections.dart';
import 'package:icare/src/features/profile/data/models/update_user_params.dart';

abstract class EditProfileDatasource {
  Future<List<void>> updateUser(UpdateUserParams params);
  Future<TaskSnapshot> uploadNewProfileImage(File? newProfileImage);
  Future<void> updatePassword(String password);
}

class EditProfileDatasourceImpl implements EditProfileDatasource {
  const EditProfileDatasourceImpl();

  @override
  Future<List<void>> updateUser(UpdateUserParams params) async {
    final ICareUser user = ICareUser(
      email: params.email ?? Helper.currentUser!.email,
      uId: Helper.uId,
      name: params.name ?? Helper.currentUser!.name,
      profileImage: params.profileImage ?? Helper.currentUser!.profileImage,
    );
    Helper.currentUser = user;
    return await Future.wait([
      accessUsersCollection().doc(Helper.uId).update(user.toJson()),
      _updateUserTinyTales(user),
      _updateUserTinyTalesLikes(user),
      _updateUserComments(user),
      _updateUserCommentsLikes(user),
      _updateUserCommentsReplies(user),
      _updateUserCommentsRepliesLikes(user),
      _updateUserBookmarkedTinyTales(user),
      _updateUserInOtherUsersFollowing(user),
      _updateUserInOtherUsersFollowers(user),
      _updateUserInChats(user),
      _updateUserInNotifications(user),
    ]);
  }

  Future<void> _updateUserInNotifications(ICareUser iCareUser) async {
    final users = await accessUsersCollection().get();
    for (final user in users.docs) {
      if (user.id == Helper.uId) {
        final notifications =
            await accessCurrentUserNotificationsCollection().get();
        for (final notification in notifications.docs) {
          Future.wait([
            _updateUserInNotificationsTinyTales(
                user.id, notification, iCareUser),
            _updateUserInNotificationsComments(
                user.id, notification, iCareUser),
            _updateUserInNotificationsReplies(user.id, notification, iCareUser),
          ]);
        }
      }
    }
  }

  Future<void> _updateUserInNotificationsReplies(
      String userId,
      QueryDocumentSnapshot<Map<String, dynamic>> notification,
      ICareUser iCareUser) async {
    if (notification.data()['reply'] != null) {
      await accessCurrentUserNotificationsCollection()
          .doc(notification.id)
          .update({
        'reply': {
          ...notification.data()['reply'],
          'user': iCareUser.toJson(),
        },
      });
    }
  }

  Future<void> _updateUserInNotificationsComments(
      String userId,
      QueryDocumentSnapshot<Map<String, dynamic>> notification,
      ICareUser iCareUser) async {
    if (notification.data()['comment'] != null) {
      await accessCurrentUserNotificationsCollection()
          .doc(notification.id)
          .update({
        'comment': {
          ...notification.data()['comment'],
          'user': iCareUser.toJson(),
        },
      });
    }
  }

  Future<void> _updateUserInNotificationsTinyTales(
      String userId,
      QueryDocumentSnapshot<Map<String, dynamic>> notification,
      ICareUser iCareUser) async {
    if (notification.data()['tinyTale'] != null) {
      await accessCurrentUserNotificationsCollection()
          .doc(notification.id)
          .update({
        'tinyTale': {
          ...notification.data()['tinyTale'],
          'user': iCareUser.toJson(),
        },
      });
    }
  }

  @override
  Future<void> updatePassword(String password) async {
    await getIt.get<FirebaseAuth>().currentUser!.updatePassword(password);
  }

  @override
  Future<TaskSnapshot> uploadNewProfileImage(File? newProfileImage) async {
    return await getIt
        .get<FirebaseStorage>()
        .ref()
        .child(
            '${AppStrings.usersCollection}/${Uri.file(newProfileImage!.path).pathSegments.last}')
        .putFile(newProfileImage);
  }

  Future<void> _updateUserTinyTales(ICareUser user) async {
    final tinyTalesQuery = await accessTinyTalesCollection().get();
    for (final tinyTale in tinyTalesQuery.docs) {
      if (tinyTale.data()['user']?['uId'] == Helper.uId) {
        await accessTinyTalesCollection().doc(tinyTale.id).update(
          {
            'user': user.toJson(),
          },
        );
      }
    }
  }

  Future<void> _updateUserTinyTalesLikes(ICareUser user) async {
    final tinyTalesQuery = await accessTinyTalesCollection().get();
    for (final tinyTale in tinyTalesQuery.docs) {
      final tinyTaleLikes =
          await accessTinyTaleLikesCollection(tinyTale.id).get();
      for (final like in tinyTaleLikes.docs) {
        if (like.id == Helper.uId) {
          await accessTinyTaleLikesCollection(tinyTale.id)
              .doc(Helper.uId)
              .update(
            {
              'user': user.toJson(),
            },
          );
        }
      }
    }
  }

  Future<void> _updateUserComments(ICareUser user) async {
    final tinyTalesQuery = await accessTinyTalesCollection().get();
    for (final tinyTale in tinyTalesQuery.docs) {
      final comments = await accessCommentsCollection(tinyTale.id).get();
      for (final comment in comments.docs) {
        if (comment.data()['user']?['uId'] == Helper.uId) {
          await accessCommentsCollection(tinyTale.id).doc(comment.id).update(
            {
              'user': user.toJson(),
            },
          );
        }
      }
    }
  }

  Future<void> _updateUserCommentsLikes(ICareUser user) async {
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
                .update(
              {
                'user': user.toJson(),
              },
            );
          }
        }
      }
    }
  }

  Future<void> _updateUserCommentsReplies(ICareUser user) async {
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
                .update(
              {
                'user': user.toJson(),
              },
            );
          }
        }
      }
    }
  }

  Future<void> _updateUserCommentsRepliesLikes(ICareUser user) async {
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
                  .update(
                {
                  'user': user.toJson(),
                },
              );
            }
          }
        }
      }
    }
  }

  Future<void> _updateUserBookmarkedTinyTales(ICareUser user) async {
    final bookmarkedTinyTalesQuery =
        await accessBookmarkedTinyTalesCollection().get();
    for (final tinyTale in bookmarkedTinyTalesQuery.docs) {
      if (tinyTale.data()['user']?['uId'] == Helper.uId) {
        await accessBookmarkedTinyTalesCollection().doc(tinyTale.id).update(
          {
            'user': user.toJson(),
          },
        );
      }
    }
  }

  Future<void> _updateUserInOtherUsersFollowing(ICareUser user) async {
    final usersQuery = await accessUsersCollection().get();
    for (final queryUser in usersQuery.docs) {
      final followingQuery =
          await accessUserFollowingCollection(queryUser.id).get();
      for (final following in followingQuery.docs) {
        if (following.id == Helper.uId) {
          await accessUserFollowingCollection(queryUser.id)
              .doc(Helper.uId)
              .update(user.toJson());
        }
      }
    }
  }

  Future<void> _updateUserInOtherUsersFollowers(ICareUser user) async {
    final usersQuery = await accessUsersCollection().get();
    for (final queryUser in usersQuery.docs) {
      final followersQuery =
          await accessUserFollowersCollection(queryUser.id).get();
      for (final follower in followersQuery.docs) {
        if (follower.id == Helper.uId) {
          await accessUserFollowersCollection(queryUser.id)
              .doc(Helper.uId)
              .update(user.toJson());
        }
      }
    }
  }

  Future<void> _updateUserInChats(ICareUser user) async {
    final usersQuery = await accessUsersCollection().get();
    for (final queryUser in usersQuery.docs) {
      final chatQuery = await queryUser.reference
          .collection(AppStrings.chatsCollection)
          .get();

      for (final chat in chatQuery.docs) {
        if (chat.id == Helper.uId) {
          await chat.reference.update(user.toJson());
        }
      }
    }
  }
}
