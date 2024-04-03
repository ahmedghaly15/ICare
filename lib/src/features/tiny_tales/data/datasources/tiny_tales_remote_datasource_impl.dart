import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/extensions/get_query_snapshot.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/tiny_tales/data/datasources/tiny_tales_remote_datasource.dart';
import 'package:icare/src/features/tiny_tales/data/models/create_tiny_tale_params.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_model.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale_data.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';

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
      user: params.context.read<UserCubit>().currentUser,
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

    return documentReference;
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getTinyTales() async {
    return await _accessTinyTalesCollection()
        .orderBy(
          AppStrings.dateTime,
          descending: true,
        )
        .getQuerySnapshot();
  }

  @override
  Future<void> likeTinyTale(LikeParams params) async {
    final LikeModel like = LikeModel(
      user: params.context.read<UserCubit>().currentUser,
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
    return await _accessLikesCollection(tinyTaleId).getQuerySnapshot();
  }

  @override
  Future<void> deleteTinyTale(String tinyTaleId) async {
    _deleteTinyTaleLikes(tinyTaleId);
    _deleteEachCommentRepliesLikes(tinyTaleId);
    _deleteEachCommentReplies(tinyTaleId);
    _deleteEachCommentLikes(tinyTaleId);
    _deleteTinyTaleComments(tinyTaleId);

    await _accessTinyTalesCollection().doc(tinyTaleId).delete();
  }

  void _deleteTinyTaleComments(String tinyTaleId) {
    _accessCommentsCollection(tinyTaleId).snapshots().listen((snapshot) {
      for (final doc in snapshot.docs) {
        doc.reference.delete();
      }
    });
  }

  void _deleteEachCommentReplies(String tinyTaleId) {
    _accessCommentsCollection(tinyTaleId).snapshots().listen((snapshot) {
      for (final doc in snapshot.docs) {
        doc.reference
            .collection(AppStrings.commentReplies)
            .snapshots()
            .listen((event) {
          for (final doc in event.docs) {
            doc.reference.delete();
          }
        });
      }
    });
  }

  void _deleteEachCommentRepliesLikes(String tinyTaleId) {
    _accessCommentsCollection(tinyTaleId).snapshots().listen((snapshot) {
      for (final doc in snapshot.docs) {
        doc.reference
            .collection(AppStrings.commentReplies)
            .snapshots()
            .listen((event) {
          for (final doc in event.docs) {
            doc.reference
                .collection(AppStrings.replyLikes)
                .snapshots()
                .listen((event) {
              for (final doc in event.docs) {
                doc.reference.delete();
              }
            });
          }
        });
      }
    });
  }

  void _deleteEachCommentLikes(String tinyTaleId) {
    _accessCommentsCollection(tinyTaleId).snapshots().listen((snapshot) {
      for (final doc in snapshot.docs) {
        doc.reference
            .collection(AppStrings.commentLikesCollection)
            .snapshots()
            .listen((event) {
          for (final doc in event.docs) {
            doc.reference.delete();
          }
        });
      }
    });
  }

  void _deleteTinyTaleLikes(String tinyTaleId) {
    _accessLikesCollection(tinyTaleId).snapshots().listen((snapshot) {
      for (final doc in snapshot.docs) {
        doc.reference.delete();
      }
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
        .getQuerySnapshot();
  }

  @override
  Stream<bool> isTinyTaleBookmarkedByMe(String tinyTaleId) {
    return _accessBookmarkedTinyTalesCollection()
        .doc(tinyTaleId)
        .snapshots()
        .map((snapshot) => snapshot.exists);
  }
}
