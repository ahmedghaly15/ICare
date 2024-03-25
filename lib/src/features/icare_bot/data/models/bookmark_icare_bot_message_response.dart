import 'package:json_annotation/json_annotation.dart';

part 'bookmark_icare_bot_message_response.g.dart';

@JsonSerializable()
class BookmarkICareBotMessageResponse {
  @JsonKey(name: 'chat_response_id')
  final String chatResponseId;
  @JsonKey(name: 'chat_response')
  final String chatResponse;

  const BookmarkICareBotMessageResponse({
    required this.chatResponseId,
    required this.chatResponse,
  });

  factory BookmarkICareBotMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$BookmarkICareBotMessageResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$BookmarkICareBotMessageResponseToJson(this);
}
