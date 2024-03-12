import 'dart:io';

import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_response.dart';
import 'package:icare/src/features/baby_cry_predictor/data/repositories/baby_cry_predictor_repo.dart';

class BabyCryPredictorUseCase
    implements BaseUseCase<BabyCryPredictorResponse, File> {
  final BabyCryPredictorRepo _babyCryPredictorDatasource;

  const BabyCryPredictorUseCase(this._babyCryPredictorDatasource);

  @override
  Future<ApiResult<BabyCryPredictorResponse>> call(File params) async {
    return await _babyCryPredictorDatasource.babyCryPredictor(params);
  }
}
