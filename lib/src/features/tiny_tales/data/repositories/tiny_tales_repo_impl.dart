import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_firebase_errors.dart';
import 'package:icare/src/features/tiny_tales/data/datasources/tiny_tales_remote_datasource.dart';
import 'package:icare/src/features/tiny_tales/data/models/create_tiny_tale_params.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/repositories/tiny_tales_repo.dart';

class TinyTalesRepoImpl implements TinyTalesRepo {
  final TinyTalesRemoteDatasource _tinyTalesRemoteDatasource;

  const TinyTalesRepoImpl(this._tinyTalesRemoteDatasource);

  @override
  Future<FirebaseRequestResult<DocumentReference<Map<String, dynamic>>>>
      createTinyTale(CreateTinyTaleParams params) {
    return executeAndHandleFirebaseErrors<
        DocumentReference<Map<String, dynamic>>>(
      () async => await _tinyTalesRemoteDatasource.createTinyTale(params),
    );
  }

  @override
  Future<FirebaseRequestResult<void>> likeTinyTale(LikeParams params) {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _tinyTalesRemoteDatasource.likeTinyTale(params),
    );
  }

  @override
  Future<FirebaseRequestResult<void>> unLikeTinyTale(String tinyTaleId) {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _tinyTalesRemoteDatasource.unLikeTinyTale(tinyTaleId),
    );
  }

  @override
  Future<FirebaseRequestResult<List<ICareUser>>> getPeopleWhoLiked(
    String tinyTaleId,
  ) async {
    return executeAndHandleFirebaseErrors<List<ICareUser>>(
      () async {
        final QuerySnapshot<Map<String, dynamic>> querySnapshot =
            await _tinyTalesRemoteDatasource.getPeopleWhoLiked(tinyTaleId);

        return querySnapshot.docs
            .map((doc) => ICareUser.fromJson(doc.data()['user']))
            .toList();
      },
    );
  }

  @override
  Future<FirebaseRequestResult<void>> deleteTinyTale(String tinyTaleId) {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _tinyTalesRemoteDatasource.deleteTinyTale(tinyTaleId),
    );
  }

  @override
  Future<FirebaseRequestResult<TaskSnapshot>> uploadTinyTaleImage(
    File? tinyTaleImage,
  ) {
    return executeAndHandleFirebaseErrors<TaskSnapshot>(
      () async =>
          await _tinyTalesRemoteDatasource.uploadTinyTaleImage(tinyTaleImage),
    );
  }

  @override
  Stream<bool> isTinyTaleLikedByMe(String tinyTaleId) {
    return _tinyTalesRemoteDatasource.isTinyTaleLikedByMe(tinyTaleId);
  }

  @override
  Future<FirebaseRequestResult<void>> bookmarkTinyTale(TinyTale tinyTale) {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _tinyTalesRemoteDatasource.bookmarkTinyTale(tinyTale),
    );
  }

  @override
  Future<FirebaseRequestResult<void>> unBookmarkTinyTale(String tinyTaleId) {
    return executeAndHandleFirebaseErrors<void>(
      () async =>
          await _tinyTalesRemoteDatasource.unBookmarkTinyTale(tinyTaleId),
    );
  }

  @override
  Future<FirebaseRequestResult<List<TinyTale>>> getBookmarkedTinyTales() {
    return executeAndHandleFirebaseErrors(() async {
      final QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await _tinyTalesRemoteDatasource.getBookmarkedTinyTales();

      return querySnapshot.docs
          .map((doc) => TinyTale.fromJson(doc.data()))
          .toList();
    });
  }

  @override
  Stream<bool> isTinyTaleBookmarkedByMe(String tinyTaleId) {
    return _tinyTalesRemoteDatasource.isTinyTaleBookmarkedByMe(tinyTaleId);
  }
}
