import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:icare/src/features/icare_bot/data/models/ask_icare_bot_params.dart';
import 'package:icare/src/features/icare_bot/data/models/icare_bot_result.dart';
import 'package:icare/src/features/icare_bot/data/repositories/icare_bot_repo.dart';

abstract class ICareBotUseCase<Type, Params> {
  Future<ICareBotResult<Type>> call(Params params);
}

class AskICareBotUseCase
    implements ICareBotUseCase<GenerateContentResponse, AskICareBotParams> {
  final ICareBotRepo _icareBotRepo;

  const AskICareBotUseCase(this._icareBotRepo);

  @override
  Future<ICareBotResult<GenerateContentResponse>> call(
    AskICareBotParams params,
  ) async {
    return await _icareBotRepo.askICareBot(params);
  }
}
