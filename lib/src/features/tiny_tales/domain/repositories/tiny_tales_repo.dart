import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/features/tiny_tales/data/models/create_tiny_tale_params.dart';

abstract class TinyTalesRepo {
  Future<FirebaseRequestResult<DocumentReference<Map<String, dynamic>>>>
      createTinyTale(CreateTinyTaleParams params);

  Future<FirebaseRequestResult<void>> likeTinyTale(String tinyTaleId);
  Future<FirebaseRequestResult<void>> unLikeTinyTale(String tinyTaleId);
  Future<FirebaseRequestResult<void>> deleteTinyTale(String tinyTaleId);
  Future<FirebaseRequestResult<TaskSnapshot>> uploadTinyTaleImage(
      File? tinyTaleImage);
}
