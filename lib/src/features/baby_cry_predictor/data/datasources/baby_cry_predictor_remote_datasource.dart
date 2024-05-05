import 'dart:io';

import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_class.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_response.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/last_result_response.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/upload_miss_classifying_params.dart';

abstract class BabyCryPredictorRemoteDatasource {
  Future<BabyCryPredictorResponse> babyCryPredictor(File audioPath);
  Future<String> getBabyCryPredictorAbout();
  Future<List<BabyCryPredictorClass>> getBabyCryPredictorClasses();
  Future<LastResultResponse> getBabyCryPredictorLastResult();
  Future<String> babyCryPredictorAddNewClass(String className);
  Future<String> babyCryPredictorUploadMissClassifying(
    UploadMissClassifyingParams params,
  );
}

class BabyCryPredictorRemoteDatasourceImpl
    implements BabyCryPredictorRemoteDatasource {
  final ApiService _apiService;

  const BabyCryPredictorRemoteDatasourceImpl(this._apiService);

  @override
  Future<BabyCryPredictorResponse> babyCryPredictor(File audioPath) async {
    return await _apiService.babyCryPredictor(
      babyCryAudio: audioPath,
      userId: Helper.uId!,
    );
  }

  @override
  Future<String> getBabyCryPredictorAbout() async {
    return await _apiService.getBabyCryPredictorAbout();
  }

  @override
  Future<List<BabyCryPredictorClass>> getBabyCryPredictorClasses() async {
    return await _apiService.getBabyCryPredictorClasses();
  }

  @override
  Future<LastResultResponse> getBabyCryPredictorLastResult() async {
    return await _apiService.getBabyCryPredictorLastResult(Helper.uId!);
  }

  @override
  Future<String> babyCryPredictorAddNewClass(String className) async {
    return await _apiService.babyCryPredictorAddNewClass(className);
  }

  @override
  Future<String> babyCryPredictorUploadMissClassifying(
    UploadMissClassifyingParams params,
  ) async {
    return await _apiService.babyCryPredictorUploadMissClassifying(
      audioFile: params.audioFile,
      className: params.className,
    );
  }
}
