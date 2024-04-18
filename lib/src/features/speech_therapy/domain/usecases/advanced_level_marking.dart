import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_marking_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_params.dart';
import 'package:icare/src/features/speech_therapy/domain/repositories/speech_therapy_repo.dart';

class AdvancedLevelMarkingUseCase
    implements BaseUseCase<AdvancedLevelMarkingResponse, MarkParams> {
  final SpeechTherapyRepo _speechTherapyRepo;

  const AdvancedLevelMarkingUseCase(this._speechTherapyRepo);

  @override
  Future<ApiResult<AdvancedLevelMarkingResponse>> call(
    MarkParams params,
  ) async {
    return await _speechTherapyRepo.advancedLevelMarking(params);
  }
}
