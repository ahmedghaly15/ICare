import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/baby_cry_predictor/data/repositories/baby_cry_predictor_repo.dart';

class BabyCryPredictorLeaveFeedbackUseCase
    implements BaseUseCase<String, String> {
  final BabyCryPredictorRepo _babyCryPredictorRepo;

  const BabyCryPredictorLeaveFeedbackUseCase(this._babyCryPredictorRepo);

  @override
  Future<ApiResult<String>> call(String params) async {
    return await _babyCryPredictorRepo
        .babyCryPredictorUploadMissClassifying(params);
  }
}
