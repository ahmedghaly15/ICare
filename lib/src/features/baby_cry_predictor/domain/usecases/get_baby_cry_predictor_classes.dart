import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_class.dart';
import 'package:icare/src/features/baby_cry_predictor/data/repositories/baby_cry_predictor_repo.dart';

class GetBabyCryPredictorClassesUseCase
    implements BaseUseCase<List<BabyCryPredictorClass>, NoParams> {
  final BabyCryPredictorRepo _babyCryPredictorRepo;

  const GetBabyCryPredictorClassesUseCase(this._babyCryPredictorRepo);

  @override
  Future<ApiResult<List<BabyCryPredictorClass>>> call(NoParams params) async {
    return await _babyCryPredictorRepo.getBabyCryPredictorClasses();
  }
}
