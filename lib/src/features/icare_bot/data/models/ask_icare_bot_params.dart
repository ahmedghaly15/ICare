import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

part 'ask_icare_bot_params.freezed.dart';

@freezed
class AskICareBotParams with _$AskICareBotParams {
  const factory AskICareBotParams({
    required GenerativeModel model,
    required Content content,
  }) = _AskICareBotParams;
}
