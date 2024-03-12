import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:icare/src/features/baby_cry_predictor/data/datasources/baby_cry_predictor_datasource.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_response.dart';

class BabyCryPredictorRepo {
  final BabyCryPredictorDatasource _babyCryPredictorDatasource;

  const BabyCryPredictorRepo(this._babyCryPredictorDatasource);

  Future<ApiResult<BabyCryPredictorResponse>> babyCryPredictor(
    String audioPath,
  ) {
    return executeAndHandleErrors<BabyCryPredictorResponse>(
      () async => await _babyCryPredictorDatasource.babyCryPredictor(audioPath),
    );
  }
}
