import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'send_message_params.g.dart';

@JsonSerializable()
class SendMessageParams {
  final String? receiverId;
  final String? receiverName;
  final String? time;
  final String? date;
  final String? messageText;
  final String? messageImage;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final BuildContext? context;

  const SendMessageParams({
    this.context,
    this.receiverId,
    this.receiverName,
    this.time,
    this.date,
    this.messageText,
    this.messageImage,
  });

  factory SendMessageParams.fromJson(Map<String, dynamic> json) =>
      _$SendMessageParamsFromJson(json);

  Map<String, dynamic> toJson() => _$SendMessageParamsToJson(this);
}
