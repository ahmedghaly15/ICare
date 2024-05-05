import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/last_result_response.dart';
import 'package:icare/src/features/baby_cry_predictor/data/repositories/baby_cry_predictor_repo.dart';

class GetBabyCryPredictorLastResultUseCase
    implements BaseUseCase<LastResultResponse, NoParams> {
  final BabyCryPredictorRepo _babyCryPredictorRepo;

  const GetBabyCryPredictorLastResultUseCase(this._babyCryPredictorRepo);

  @override
  Future<ApiResult<LastResultResponse>> call(NoParams params) async {
    return await _babyCryPredictorRepo.getBabyCryPredictorLastResult();
  }
}
