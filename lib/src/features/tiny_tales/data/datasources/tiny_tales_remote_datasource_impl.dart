import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/tiny_tales/data/datasources/tiny_tales_remote_datasource.dart';
import 'package:icare/src/features/tiny_tales/data/models/create_tiny_tale_params.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_model.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale_data.dart';

class TinyTalesRemoteDatasourceImpl implements TinyTalesRemoteDatasource {
  const TinyTalesRemoteDatasourceImpl();

  CollectionReference<Map<String, dynamic>> _accessTinyTalesCollection() {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.tinyTalesCollection);
  }

  CollectionReference<Map<String, dynamic>> _accessLikesCollection(
      String tinyTaleId) {
    return _accessTinyTalesCollection()
        .doc(tinyTaleId)
        .collection(AppStrings.likesCollection);
  }

  @override
  Future<DocumentReference<Map<String, dynamic>>> createTinyTale(
    CreateTinyTaleParams params,
  ) async {
    final TinyTale tinyTale = TinyTale(
      user: Helper.currentUser,
      tinyTaleData: TinyTaleData(
        text: params.text,
        date: params.date,
        time: params.time,
        tinyTaleImage: params.tinyTaleImage,
      ),
      dateTime: Timestamp.now(),
    );
    final DocumentReference<Map<String, dynamic>> documentReference =
        await _accessTinyTalesCollection().add(tinyTale.toJson());
    await documentReference
        .update({AppStrings.tinyTaleId: documentReference.id});
    await _accessUserTinyTalesCollection()
        .doc(documentReference.id)
        .set(tinyTale.toJson());
    await _accessUserTinyTalesCollection()
        .doc(documentReference.id)
        .update({AppStrings.tinyTaleId: documentReference.id});

    return documentReference;
  }

  CollectionReference<Map<String, dynamic>> _accessUserTinyTalesCollection() {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.usersCollection)
        .doc(Helper.uId)
        .collection(AppStrings.tinyTalesCollection);
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getTinyTales() async {
    return await _accessTinyTalesCollection()
        .orderBy(
          AppStrings.dateTime,
          descending: true,
        )
        .get();
  }

  @override
  Future<void> likeTinyTale(LikeParams params) async {
    final LikeModel like = LikeModel(
      user: Helper.currentUser,
      dateTime: DateTime.now().toString(),
    );

    return await _accessLikesCollection(params.tinyTaleId)
        .doc(Helper.uId)
        .set(like.toJson());
  }

  @override
  Future<void> unLikeTinyTale(String tinyTaleId) async {
    return await _accessLikesCollection(tinyTaleId).doc(Helper.uId).delete();
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getPeopleWhoLiked(
    String tinyTaleId,
  ) async {
    return await _accessLikesCollection(tinyTaleId).get();
  }

  @override
  Future<void> deleteTinyTale(String tinyTaleId) async {
    await _deleteTinyTaleLikes(tinyTaleId);
    await _deleteEachCommentRepliesLikes(tinyTaleId);
    await _deleteEachCommentReplies(tinyTaleId);
    await _deleteEachCommentLikes(tinyTaleId);
    await _deleteTinyTaleComments(tinyTaleId);
    await _accessUserTinyTalesCollection().doc(tinyTaleId).delete();
    await _accessTinyTalesCollection().doc(tinyTaleId).delete();
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
    final snapshot = await _accessLikesCollection(tinyTaleId).get();
    await Future.forEach(snapshot.docs, (doc) async {
      await doc.reference.delete();
    });
  }

  CollectionReference<Map<String, dynamic>> _accessCommentsCollection(
      String tinyTaleId) {
    return _accessTinyTalesCollection()
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
    return _accessLikesCollection(tinyTaleId)
        .doc(Helper.uId)
        .snapshots()
        .map((snapshot) => snapshot.exists);
  }

  CollectionReference<Map<String, dynamic>>
      _accessBookmarkedTinyTalesCollection() {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.usersCollection)
        .doc(Helper.uId)
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
