import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/upload_miss_classifying_params.dart';
import 'package:icare/src/features/baby_cry_predictor/data/repositories/baby_cry_predictor_repo.dart';

class BabyCryPredictorMissClassifyingUseCase
    implements BaseUseCase<String, UploadMissClassifyingParams> {
  final BabyCryPredictorRepo _babyCryPredictorRepo;

  const BabyCryPredictorMissClassifyingUseCase(this._babyCryPredictorRepo);

  @override
  Future<ApiResult<String>> call(UploadMissClassifyingParams params) async {
    return await _babyCryPredictorRepo
        .babyCryPredictorUploadMissClassifying(params);
  }
}
