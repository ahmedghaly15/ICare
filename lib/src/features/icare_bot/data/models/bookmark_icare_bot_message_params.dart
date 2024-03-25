import 'package:json_annotation/json_annotation.dart';

part 'bookmark_icare_bot_message_params.g.dart';

@JsonSerializable()
class BookmarkICareBotMessageParams {
  @JsonKey(name: 'user_id')
  final String userId;
  @JsonKey(name: 'chat_response')
  final String chatResponse;

  const BookmarkICareBotMessageParams({
    required this.userId,
    required this.chatResponse,
  });

  factory BookmarkICareBotMessageParams.fromJson(Map<String, dynamic> json) =>
      _$BookmarkICareBotMessageParamsFromJson(json);

  Map<String, dynamic> toJson() => _$BookmarkICareBotMessageParamsToJson(this);
}
