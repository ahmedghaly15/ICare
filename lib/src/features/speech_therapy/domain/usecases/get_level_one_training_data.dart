import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_data.dart';
import 'package:icare/src/features/speech_therapy/domain/repositories/speech_therapy_repo.dart';

class GetLevelOneTrainingDataUseCase
    implements BaseUseCase<List<LevelOneTrainingData>, NoParams> {
  final SpeechTherapyRepo _speechTherapyRepo;

  const GetLevelOneTrainingDataUseCase(this._speechTherapyRepo);

  @override
  Future<ApiResult<List<LevelOneTrainingData>>> call(NoParams params) async {
    return await _speechTherapyRepo.getLevelOneTrainingData();
  }
}
