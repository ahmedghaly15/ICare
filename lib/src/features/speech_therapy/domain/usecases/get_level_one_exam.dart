import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_exam_response.dart';
import 'package:icare/src/features/speech_therapy/domain/repositories/speech_therapy_repo.dart';

class GetLevelOneExamUseCase
    implements BaseUseCase<List<LevelOneExamResponse>, int> {
  final SpeechTherapyRepo _speechTherapyRepo;

  const GetLevelOneExamUseCase(this._speechTherapyRepo);

  @override
  Future<ApiResult<List<LevelOneExamResponse>>> call(int params) async {
    return await _speechTherapyRepo.getLevelOneExam(params);
  }
}
