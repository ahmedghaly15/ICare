import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/speech_therapy/data/models/speech_therapy_level.dart';
import 'package:icare/src/features/speech_therapy/domain/repositories/speech_therapy_repo.dart';

class GetSpeechTherapyLevelsUseCase
    implements BaseUseCase<List<SpeechTherapyLevel>, NoParams> {
  final SpeechTherapyRepo _speechTherapyRepo;

  const GetSpeechTherapyLevelsUseCase(this._speechTherapyRepo);

  @override
  Future<ApiResult<List<SpeechTherapyLevel>>> call(NoParams params) async {
    return await _speechTherapyRepo.getSpeechTherapyLevels();
  }
}
