import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/core/models/icare_user.dart';

part 'send_message_params.g.dart';
part 'send_message_params.freezed.dart';

@freezed
class SendMessageParams with _$SendMessageParams {
  const factory SendMessageParams({
    String? time,
    String? date,
    String? messageText,
    String? messageImage,
    ICareUser? receiver,
  }) = _SendMessageParams;

  factory SendMessageParams.fromJson(Map<String, dynamic> json) =>
      _$SendMessageParamsFromJson(json);
}
