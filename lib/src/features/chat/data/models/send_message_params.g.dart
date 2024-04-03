// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendMessageParams _$SendMessageParamsFromJson(Map<String, dynamic> json) =>
    SendMessageParams(
      receiverId: json['receiverId'] as String?,
      receiverName: json['receiverName'] as String?,
      time: json['time'] as String?,
      date: json['date'] as String?,
      messageText: json['messageText'] as String?,
      messageImage: json['messageImage'] as String?,
    );

Map<String, dynamic> _$SendMessageParamsToJson(SendMessageParams instance) =>
    <String, dynamic>{
      'receiverId': instance.receiverId,
      'receiverName': instance.receiverName,
      'time': instance.time,
      'date': instance.date,
      'messageText': instance.messageText,
      'messageImage': instance.messageImage,
    };
