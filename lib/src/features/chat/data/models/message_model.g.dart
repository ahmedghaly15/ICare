// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(Map<String, dynamic> json) =>
    _$MessageModelImpl(
      senderId: json['senderId'] as String?,
      senderName: json['senderName'] as String?,
      messageId: json['messageId'] as String?,
      messageData: json['messageData'] == null
          ? null
          : SendMessageParams.fromJson(
              json['messageData'] as Map<String, dynamic>),
      dateTime: json['dateTime'] as Timestamp?,
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'senderName': instance.senderName,
      'messageId': instance.messageId,
      'messageData': instance.messageData?.toJson(),
      'dateTime': instance.dateTime,
    };
