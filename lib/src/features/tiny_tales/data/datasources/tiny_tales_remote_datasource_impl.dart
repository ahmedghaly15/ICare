import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/access_collections.dart';
import 'package:icare/src/features/tiny_tales/data/datasources/tiny_tales_remote_datasource.dart';
import 'package:icare/src/features/tiny_tales/data/models/create_tiny_tale_params.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_model.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';

class TinyTalesRemoteDatasourceImpl implements TinyTalesRemoteDatasource {
  const TinyTalesRemoteDatasourceImpl();

  @override
  Future<DocumentReference<Map<String, dynamic>>> createTinyTale(
    CreateTinyTaleParams params,
  ) async {
    final TinyTale tinyTale = TinyTale(
      user: Constants.currentUser,
      tinyTaleData: TinyTaleData(
        text: params.text,
        date: params.date,
        time: params.time,
        tinyTaleImage: params.tinyTaleImage,
      ),
      dateTime: Timestamp.now(),
    );
    final DocumentReference<Map<String, dynamic>> documentReference =
        await accessTinyTalesCollection().add(tinyTale.toJson());
    await documentReference
        .update({AppStrings.tinyTaleId: documentReference.id});
    return documentReference;
  }

  @override
  Future<void> likeTinyTale(LikeParams params) async {
    final LikeModel like = LikeModel(
      user: Constants.currentUser,
      dateTime: DateTime.now().toString(),
    );

    return await accessTinyTaleLikesCollection(params.tinyTaleId)
        .doc(Constants.uId)
        .set(like.toJson());
  }

  @override
  Future<void> unLikeTinyTale(String tinyTaleId) async {
    return await accessTinyTaleLikesCollection(tinyTaleId)
        .doc(Constants.uId)
        .delete();
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getPeopleWhoLiked(
    String tinyTaleId,
  ) async {
    return await accessTinyTaleLikesCollection(tinyTaleId).get();
  }

  @override
  Future<void> deleteTinyTale(String tinyTaleId) async {
    Future.wait([
      _deleteEachCommentRepliesLikes(tinyTaleId),
      _deleteEachCommentReplies(tinyTaleId),
      _deleteEachCommentLikes(tinyTaleId),
      _deleteTinyTaleComments(tinyTaleId),
      _deleteTinyTaleLikes(tinyTaleId),
      _deleteTinyTalesFromNotifications(tinyTaleId),
      accessTinyTalesCollection().doc(tinyTaleId).delete(),
    ]);
  }

  Future<void> _deleteTinyTalesFromNotifications(String tinyTaleId) async {
    final notifications =
        await accessCurrentUserNotificationsCollection().get();
    Future.forEach(notifications.docs, (notification) async {
      if (notification.data()['tinyTale'] != null &&
          notification.data()['tinyTale'][AppStrings.tinyTaleId] ==
              tinyTaleId) {
        await notification.reference.delete();
      }
    });
  }

  Future<void> _deleteTinyTaleComments(String tinyTaleId) async {
    final snapshot = await _accessCommentsCollection(tinyTaleId).get();
    await Future.forEach(snapshot.docs, (doc) async {
      await doc.reference.delete();
    });
  }

  Future<void> _deleteEachCommentReplies(String tinyTaleId) async {
    final snapshot = await _accessCommentsCollection(tinyTaleId).get();
    await Future.forEach(snapshot.docs, (doc) async {
      final repliesSnapshot =
          await doc.reference.collection(AppStrings.commentReplies).get();
      await Future.forEach(repliesSnapshot.docs, (replyDoc) async {
        await replyDoc.reference.delete();
      });
    });
  }

  Future<void> _deleteEachCommentRepliesLikes(String tinyTaleId) async {
    final snapshot = await _accessCommentsCollection(tinyTaleId).get();
    await Future.forEach(snapshot.docs, (doc) async {
      final repliesSnapshot =
          await doc.reference.collection(AppStrings.commentReplies).get();
      await Future.forEach(repliesSnapshot.docs, (replyDoc) async {
        final likesSnapshot =
            await replyDoc.reference.collection(AppStrings.replyLikes).get();
        await Future.forEach(likesSnapshot.docs, (likeDoc) async {
          await likeDoc.reference.delete();
        });
      });
    });
  }

  Future<void> _deleteEachCommentLikes(String tinyTaleId) async {
    final snapshot = await _accessCommentsCollection(tinyTaleId).get();
    await Future.forEach(snapshot.docs, (doc) async {
      final likesSnapshot = await doc.reference
          .collection(AppStrings.commentLikesCollection)
          .get();
      await Future.forEach(likesSnapshot.docs, (likeDoc) async {
        await likeDoc.reference.delete();
      });
    });
  }

  Future<void> _deleteTinyTaleLikes(String tinyTaleId) async {
    final snapshot = await accessTinyTaleLikesCollection(tinyTaleId).get();
    await Future.forEach(snapshot.docs, (doc) async {
      await doc.reference.delete();
    });
  }

  CollectionReference<Map<String, dynamic>> _accessCommentsCollection(
      String tinyTaleId) {
    return accessTinyTalesCollection()
        .doc(tinyTaleId)
        .collection(AppStrings.commentsCollection);
  }

  @override
  Future<TaskSnapshot> uploadTinyTaleImage(File? tinyTaleImage) async {
    return await getIt
        .get<FirebaseStorage>()
        .ref()
        .child(
            '${AppStrings.tinyTalesCollection}/${Uri.file(tinyTaleImage!.path).pathSegments.last}')
        .putFile(tinyTaleImage);
  }

  @override
  Stream<bool> isTinyTaleLikedByMe(String tinyTaleId) {
    return accessTinyTaleLikesCollection(tinyTaleId)
        .doc(Constants.uId)
        .snapshots()
        .map((snapshot) => snapshot.exists);
  }

  CollectionReference<Map<String, dynamic>>
      _accessBookmarkedTinyTalesCollection() {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.usersCollection)
        .doc(Constants.uId)
        .collection(AppStrings.bookmarkedTinyTalesCollection);
  }

  @override
  Future<void> bookmarkTinyTale(TinyTale tinyTale) async {
    return await _accessBookmarkedTinyTalesCollection()
        .doc(tinyTale.tinyTaleId)
        .set(tinyTale.toJson());
  }

  @override
  Future<void> unBookmarkTinyTale(String tinyTaleId) async {
    return await _accessBookmarkedTinyTalesCollection()
        .doc(tinyTaleId)
        .delete();
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getBookmarkedTinyTales() async {
    return await _accessBookmarkedTinyTalesCollection()
        .orderBy(
          AppStrings.dateTime,
          descending: true,
        )
        .get();
  }

  @override
  Stream<bool> isTinyTaleBookmarkedByMe(String tinyTaleId) {
    return _accessBookmarkedTinyTalesCollection()
        .doc(tinyTaleId)
        .snapshots()
        .map((snapshot) => snapshot.exists);
  }
}
