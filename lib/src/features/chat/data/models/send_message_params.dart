import 'package:icare/src/core/models/icare_user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'send_message_params.g.dart';

@JsonSerializable()
class SendMessageParams {
  final String? time;
  final String? date;
  final String? messageText;
  final String? messageImage;
  final ICareUser? receiver;

  const SendMessageParams({
    this.time,
    this.date,
    this.messageText,
    this.messageImage,
    this.receiver,
  });
  factory SendMessageParams.fromJson(Map<String, dynamic> json) =>
      _$SendMessageParamsFromJson(json);

  Map<String, dynamic> toJson() => _$SendMessageParamsToJson(this);
}
