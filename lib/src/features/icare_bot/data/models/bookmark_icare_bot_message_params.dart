import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark_icare_bot_message_params.g.dart';
part 'bookmark_icare_bot_message_params.freezed.dart';

@freezed
class BookmarkICareBotMessageParams with _$BookmarkICareBotMessageParams {
  const factory BookmarkICareBotMessageParams({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'chat_response') required String chatResponse,
  }) = _BookmarkICareBotMessageParams;

  factory BookmarkICareBotMessageParams.fromJson(Map<String, dynamic> json) =>
      _$BookmarkICareBotMessageParamsFromJson(json);
}
