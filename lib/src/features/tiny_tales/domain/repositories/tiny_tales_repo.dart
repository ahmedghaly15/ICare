import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/features/tiny_tales/data/models/create_tiny_tale_params.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';

abstract class TinyTalesRepo {
  Future<FirebaseRequestResult<DocumentReference<Map<String, dynamic>>>>
      createTinyTale(CreateTinyTaleParams params);

  Future<FirebaseRequestResult<void>> likeTinyTale(LikeParams params);
  Future<FirebaseRequestResult<void>> unLikeTinyTale(String tinyTaleId);
  Future<FirebaseRequestResult<void>> deleteTinyTale(String tinyTaleId);
  Future<FirebaseRequestResult<TaskSnapshot>> uploadTinyTaleImage(
    File? tinyTaleImage,
  );

  Stream<bool> isTinyTaleLikedByMe(String tinyTaleId);

  Future<FirebaseRequestResult<List<TinyTale>>> getTinyTales();

  Future<FirebaseRequestResult<void>> bookmarkTinyTale(TinyTale tinyTale);

  Future<FirebaseRequestResult<void>> unBookmarkTinyTale(String tinyTaleId);

  Future<FirebaseRequestResult<List<TinyTale>>> getBookmarkedTinyTales();

  Stream<bool> isTinyTaleBookmarkedByMe(String tinyTaleId);

  Future<FirebaseRequestResult<List<ICareUser>>> getPeopleWhoLiked(
    String tinyTaleId,
  );
}
