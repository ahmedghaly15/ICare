import 'dart:io';

import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_class.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_response.dart';

abstract class BabyCryPredictorRemoteDatasource {
  Future<BabyCryPredictorResponse> babyCryPredictor(File audioPath);
  Future<String> getBabyCryPredictorAbout();
  Future<List<BabyCryPredictorClass>> getBabyCryPredictorClasses();
}

class BabyCryPredictorRemoteDatasourceImpl
    implements BabyCryPredictorRemoteDatasource {
  final ApiService _apiService;

  const BabyCryPredictorRemoteDatasourceImpl(this._apiService);

  @override
  Future<BabyCryPredictorResponse> babyCryPredictor(File audioPath) async {
    return await _apiService.babyCryPredictor(audioPath);
  }

  @override
  Future<String> getBabyCryPredictorAbout() async {
    return await _apiService.getBabyCryPredictorAbout();
  }

  @override
  Future<List<BabyCryPredictorClass>> getBabyCryPredictorClasses() async {
    return await _apiService.getBabyCryPredictorClasses();
  }
}
