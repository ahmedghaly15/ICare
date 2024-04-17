import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_two_training_response.dart';
import 'package:icare/src/features/speech_therapy/domain/repositories/speech_therapy_repo.dart';

class GetLevelTwoTrainingDataUseCase
    implements BaseUseCase<List<LevelTwoTrainingResponse>, String> {
  final SpeechTherapyRepo _speechTherapyRepo;

  const GetLevelTwoTrainingDataUseCase(this._speechTherapyRepo);

  @override
  Future<ApiResult<List<LevelTwoTrainingResponse>>> call(String params) async {
    return await _speechTherapyRepo.getLevelTwoTrainingData(params);
  }
}
