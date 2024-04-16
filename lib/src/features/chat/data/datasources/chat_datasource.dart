import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/src/features/chat/data/models/send_message_params.dart';

abstract class ChatDatasource {
  Future<void> sendMessage(SendMessageParams params);
  Future<TaskSnapshot> uploadMessageImage(File? messageImage);
  Future<QuerySnapshot<Map<String, dynamic>>> getChats();
}
