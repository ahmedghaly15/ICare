import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/features/chat/data/models/send_message_params.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message_model.g.dart';

@JsonSerializable()
class MessageModel {
  final String? senderId;
  final String? senderName;
  final String? messageId;
  final SendMessageParams? messageData;
  final Timestamp? dateTime;

  const MessageModel({
    this.senderId,
    this.senderName,
    this.dateTime,
    this.messageData,
    this.messageId,
  });

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  Map<String, dynamic> toJson() => _$MessageModelToJson(this);
}
