// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
      senderId: json['senderId'] as String?,
      senderName: json['senderName'] as String?,
      messageData: json['messageData'] == null
          ? null
          : SendMessageParams.fromJson(
              json['messageData'] as Map<String, dynamic>),
      messageId: json['messageId'] as String?,
      dateTime: json['dateTime'] as Timestamp?,
    );

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'senderName': instance.senderName,
      'messageId': instance.messageId,
      'messageData': instance.messageData?.toJson(),
      'dateTime': instance.dateTime,
    };
