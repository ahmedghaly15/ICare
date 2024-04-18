import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_training_response.dart';
import 'package:icare/src/features/speech_therapy/domain/repositories/speech_therapy_repo.dart';

class GetAdvancedLevelTrainingDataUseCase
    implements BaseUseCase<List<AdvancedLevelTrainingResponse>, NoParams> {
  final SpeechTherapyRepo _speechTherapyRepo;

  const GetAdvancedLevelTrainingDataUseCase(this._speechTherapyRepo);

  @override
  Future<ApiResult<List<AdvancedLevelTrainingResponse>>> call(
    NoParams params,
  ) async {
    return await _speechTherapyRepo.getAdvancedLevelTrainingData();
  }
}
