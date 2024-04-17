import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_params.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_response.dart';
import 'package:icare/src/features/speech_therapy/domain/repositories/speech_therapy_repo.dart';

class MarkUseCase implements BaseUseCase<MarkResponse, MarkParams> {
  final SpeechTherapyRepo _speechTherapyRepo;

  const MarkUseCase(this._speechTherapyRepo);

  @override
  Future<ApiResult<MarkResponse>> call(
    MarkParams params,
  ) async {
    return await _speechTherapyRepo.markLevelOneExam(params);
  }
}
