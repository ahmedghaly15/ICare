import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/speech_therapy/data/models/score_params.dart';
import 'package:icare/src/features/speech_therapy/data/models/score_response.dart';
import 'package:icare/src/features/speech_therapy/domain/repositories/speech_therapy_repo.dart';

class ScoreUseCase implements BaseUseCase<ScoreResponse, ScoreParams> {
  final SpeechTherapyRepo _speechTherapyRepo;

  const ScoreUseCase(this._speechTherapyRepo);

  @override
  Future<ApiResult<ScoreResponse>> call(ScoreParams params) async {
    return await _speechTherapyRepo.score(params);
  }
}
