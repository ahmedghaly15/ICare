import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/profile/data/models/update_user_params.dart';

abstract class EditProfileDatasource {
  Future<void> updateUser(UpdateUserParams params);
  Future<TaskSnapshot> uploadNewProfileImage(File? newProfileImage);
}

class EditProfileDatasourceImpl implements EditProfileDatasource {
  const EditProfileDatasourceImpl();

  @override
  Future<void> updateUser(UpdateUserParams params) async {
    final ICareUser user = ICareUser(
      email: params.email ?? Helper.currentUser!.email,
      uId: Helper.uId,
      name: params.name ?? Helper.currentUser!.name,
      profileImage: params.profileImage ?? Helper.currentUser!.profileImage,
      password: params.password ?? Helper.currentUser!.password,
    );
    Helper.currentUser = user;
    await getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.usersCollection)
        .doc(Helper.uId)
        .update(user.toJson());
    await _updateUserTinyTales(user);
    await _updateUserTinyTalesLikes(user);
    await _updateUserComments(user);
    await _updateUserCommentsLikes(user);
    await _updateUserCommentsReplies(user);
    await _updateUserCommentsRepliesLikes(user);
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
    final tinyTalesQuery = await _accessTinyTalesCollection().get();

    for (final tinyTale in tinyTalesQuery.docs) {
      if (tinyTale.data()['user']?['uId'] == Helper.uId) {
        await _accessTinyTalesCollection().doc(tinyTale.id).update(
          {
            'user': user.toJson(),
          },
        );
      }
    }
  }

  Future<void> _updateUserTinyTalesLikes(ICareUser user) async {
    final tinyTalesQuery = await _accessTinyTalesCollection().get();
    for (final tinyTale in tinyTalesQuery.docs) {
      final tinyTaleLikes =
          await _accessTinyTaleLikesCollection(tinyTale.id).get();

      for (final like in tinyTaleLikes.docs) {
        if (like.id == Helper.uId) {
          await _accessTinyTaleLikesCollection(tinyTale.id)
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
    final tinyTalesQuery = await _accessTinyTalesCollection().get();
    for (final tinyTale in tinyTalesQuery.docs) {
      final comments = await _accessCommentsCollection(tinyTale.id).get();

      for (final comment in comments.docs) {
        if (comment.data()['user']?['uId'] == Helper.uId) {
          await _accessCommentsCollection(tinyTale.id).doc(comment.id).update(
            {
              'user': user.toJson(),
            },
          );
        }
      }
    }
  }

  Future<void> _updateUserCommentsLikes(ICareUser user) async {
    final tinyTalesQuery = await _accessTinyTalesCollection().get();
    for (final tinyTale in tinyTalesQuery.docs) {
      final comments = await _accessCommentsCollection(tinyTale.id).get();
      for (final comment in comments.docs) {
        final commentLikes =
            await _accessCommentLikesCollection(tinyTale.id, comment.id).get();

        for (final like in commentLikes.docs) {
          if (like.id == Helper.uId) {
            await _accessCommentLikesCollection(tinyTale.id, comment.id)
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
    final tinyTalesQuery = await _accessTinyTalesCollection().get();
    for (final tinyTale in tinyTalesQuery.docs) {
      final comments = await _accessCommentsCollection(tinyTale.id).get();
      for (final comment in comments.docs) {
        final commentReplies =
            await _accessCommentRepliesCollection(tinyTale.id, comment.id)
                .get();
        for (final reply in commentReplies.docs) {
          if (reply.data()['user']?['uId'] == Helper.uId) {
            await _accessCommentRepliesCollection(tinyTale.id, comment.id)
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
    final tinyTalesQuery = await _accessTinyTalesCollection().get();
    for (final tinyTale in tinyTalesQuery.docs) {
      final comments = await _accessCommentsCollection(tinyTale.id).get();
      for (final comment in comments.docs) {
        final commentReplies =
            await _accessCommentRepliesCollection(tinyTale.id, comment.id)
                .get();

        for (final reply in commentReplies.docs) {
          final commentRepliesLikes =
              await _accessCommentRepliesLikesCollection(
                      tinyTale.id, comment.id, reply.id)
                  .get();
          for (final like in commentRepliesLikes.docs) {
            if (like.id == Helper.uId) {
              await _accessCommentRepliesLikesCollection(
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

  CollectionReference<Map<String, dynamic>> _accessCommentLikesCollection(
      String tinyTaleId, String commentId) {
    return _accessCommentsCollection(tinyTaleId)
        .doc(commentId)
        .collection(AppStrings.commentLikesCollection);
  }

  CollectionReference<Map<String, dynamic>> _accessCommentRepliesCollection(
      String tinyTaleId, String commentId) {
    return _accessCommentsCollection(tinyTaleId)
        .doc(commentId)
        .collection(AppStrings.commentReplies);
  }

  CollectionReference<Map<String, dynamic>> _accessTinyTaleLikesCollection(
      String tinyTaleId) {
    return _accessTinyTalesCollection()
        .doc(tinyTaleId)
        .collection(AppStrings.likesCollection);
  }

  CollectionReference<Map<String, dynamic>> _accessTinyTalesCollection() {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.tinyTalesCollection);
  }

  CollectionReference<Map<String, dynamic>> _accessCommentsCollection(
      String tinyTaleId) {
    return _accessTinyTalesCollection()
        .doc(tinyTaleId)
        .collection(AppStrings.commentsCollection);
  }

  CollectionReference<Map<String, dynamic>>
      _accessCommentRepliesLikesCollection(
    String tinyTaleId,
    String commentId,
    String replyId,
  ) {
    return _accessCommentRepliesCollection(tinyTaleId, commentId)
        .doc(replyId)
        .collection(AppStrings.replyLikes);
  }
}
