import 'dart:io';

import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/core/helpers/constants.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_class.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_response.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/last_result_response.dart';

abstract class BabyCryPredictorRemoteDatasource {
  Future<BabyCryPredictorResponse> babyCryPredictor(File audioPath);
  Future<List<BabyCryPredictorClass>> getBabyCryPredictorClasses();
  Future<LastResultResponse> getBabyCryPredictorLastResult();
  Future<String> babyCryPredictorAddNewClass(String className);
  Future<String> babyCryPredictorLeaveFeedback(String className);
}

class BabyCryPredictorRemoteDatasourceImpl
    implements BabyCryPredictorRemoteDatasource {
  final ApiService _apiService;

  const BabyCryPredictorRemoteDatasourceImpl(this._apiService);

  @override
  Future<BabyCryPredictorResponse> babyCryPredictor(File audioPath) async {
    return await _apiService.babyCryPredictor(
      babyCryAudio: audioPath,
      userId: Constants.uId!,
    );
  }

  @override
  Future<List<BabyCryPredictorClass>> getBabyCryPredictorClasses() async {
    return await _apiService.getBabyCryPredictorClasses();
  }

  @override
  Future<LastResultResponse> getBabyCryPredictorLastResult() async {
    return await _apiService.getBabyCryPredictorLastResult(Constants.uId!);
  }

  @override
  Future<String> babyCryPredictorAddNewClass(String className) async {
    return await _apiService.babyCryPredictorAddNewClass(
      className: className,
      userId: Constants.uId!,
    );
  }

  @override
  Future<String> babyCryPredictorLeaveFeedback(String className) async {
    return await _apiService.babyCryPredictorLeaveFeedback(
      className: className,
      userId: Constants.uId!,
    );
  }
}
