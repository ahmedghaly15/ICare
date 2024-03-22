import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/src/features/tiny_tales/data/models/create_tiny_tale_params.dart';

abstract class TinyTalesRemoteDatasource {
  Future<DocumentReference<Map<String, dynamic>>> createTinyTale(
    CreateTinyTaleParams params,
  );

  Future<void> likeTinyTale(String tinyTaleId);

  Future<void> unLikeTinyTale(String tinyTaleId);

  Future<void> deleteTinyTale(String tinyTaleId);

  Future<TaskSnapshot> uploadTinyTaleImage(File? tinyTaleImage);
}
