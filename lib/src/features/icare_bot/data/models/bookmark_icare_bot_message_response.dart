import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark_icare_bot_message_response.g.dart';
part 'bookmark_icare_bot_message_response.freezed.dart';

@freezed
class BookmarkICareBotMessageResponse with _$BookmarkICareBotMessageResponse {
  const factory BookmarkICareBotMessageResponse({
    @JsonKey(name: 'chat_response_id') required String chatResponseId,
    @JsonKey(name: 'chat_response') required String chatResponse,
  }) = _BookmarkICareBotMessageResponse;

  factory BookmarkICareBotMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$BookmarkICareBotMessageResponseFromJson(json);
}
