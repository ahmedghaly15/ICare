import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:icare/src/features/icare_bot/data/models/ask_icare_bot_params.dart';

abstract class ICareBotDatasource {
  Future<GenerateContentResponse> askICareBot(AskICareBotParams params);
}

class ICareBotDatasourceImpl implements ICareBotDatasource {
  const ICareBotDatasourceImpl();

  @override
  Future<GenerateContentResponse> askICareBot(AskICareBotParams params) async {
    return await params.chat.sendMessage(params.content);
  }
}
