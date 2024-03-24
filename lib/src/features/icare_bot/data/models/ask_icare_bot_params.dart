import 'package:google_generative_ai/google_generative_ai.dart';

class AskICareBotParams {
  final ChatSession chat;
  final Content content;

  const AskICareBotParams({
    required this.chat,
    required this.content,
  });
}
