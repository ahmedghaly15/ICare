import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_response.dart';

abstract class BabyCryPredictorDatasource {
  Future<BabyCryPredictorResponse> babyCryPredictor(String audioPath);
}

class BabyCryPredictorDatasourceImpl implements BabyCryPredictorDatasource {
  final ApiService _apiService;

  const BabyCryPredictorDatasourceImpl(this._apiService);

  @override
  Future<BabyCryPredictorResponse> babyCryPredictor(String audioPath) async {
    return await _apiService.babyCryPredictor(audioPath);
  }
}
