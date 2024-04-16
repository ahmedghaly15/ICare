import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/domain/repositories/speech_therapy_repo.dart';

class GetLevelOneTrainingDataUseCase
    implements BaseUseCase<List<LevelOneTrainingResponse>, String> {
  final SpeechTherapyRepo _speechTherapyRepo;

  const GetLevelOneTrainingDataUseCase(this._speechTherapyRepo);

  @override
  Future<ApiResult<List<LevelOneTrainingResponse>>> call(String params) async {
    return await _speechTherapyRepo.getLevelOneTrainingData(params);
  }
}
