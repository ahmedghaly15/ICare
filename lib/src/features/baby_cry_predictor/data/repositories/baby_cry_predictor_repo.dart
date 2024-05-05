import 'dart:io';

import 'package:flutter/material.dart';
import 'package:icare/src/core/api/api_error_handler.dart';
import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:icare/src/features/baby_cry_predictor/data/datasources/baby_cry_predictor_local_datasource.dart';
import 'package:icare/src/features/baby_cry_predictor/data/datasources/baby_cry_predictor_remote_datasource.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_class.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_response.dart';

class BabyCryPredictorRepo {
  final BabyCryPredictorRemoteDatasource _babyCryPredictorRemoteDatasource;
  final BabyCryPredictorLocalDatasource _babyCryPredictorLocalDatasource;

  const BabyCryPredictorRepo(
    this._babyCryPredictorRemoteDatasource,
    this._babyCryPredictorLocalDatasource,
  );

  Future<ApiResult<BabyCryPredictorResponse>> babyCryPredictor(
    File audioPath,
  ) {
    return executeAndHandleErrors<BabyCryPredictorResponse>(
      () async =>
          await _babyCryPredictorRemoteDatasource.babyCryPredictor(audioPath),
    );
  }

  Future<ApiResult<String>> getBabyCryPredictorAbout() async {
    if (_babyCryPredictorLocalDatasource.cachedBabyCryPredictorAboutJson() !=
        null) {
      debugPrint('*********** GOT CACHED ABOUT **********');
      return ApiResult.success(
        _babyCryPredictorLocalDatasource.retrieveCachedBabyCryPredictorAbout(),
      );
    } else {
      try {
        debugPrint('*********** GOT REMOTE ABOUT **********');
        final about =
            await _babyCryPredictorRemoteDatasource.getBabyCryPredictorAbout();
        await _babyCryPredictorLocalDatasource
            .cacheBabyCryPredictorAbout(about);
        return ApiResult.success(about);
      } catch (error) {
        return ApiResult.error(ErrorHandler.handle(error));
      }
    }
  }

  Future<ApiResult<List<BabyCryPredictorClass>>>
      getBabyCryPredictorClasses() async {
    if (_babyCryPredictorLocalDatasource.cachedBabyCryPredictorClassesJson() !=
        null) {
      debugPrint('*********** GOT CACHED CLASSES **********');
      return ApiResult.success(
        _babyCryPredictorLocalDatasource
            .retrieveCachedBabyCryPredictorClasses(),
      );
    } else {
      try {
        debugPrint('*********** GOT REMOTE CLASSES **********');
        final classes = await _babyCryPredictorRemoteDatasource
            .getBabyCryPredictorClasses();
        await _babyCryPredictorLocalDatasource
            .cacheBabyCryPredictorClasses(classes);
        return ApiResult.success(classes);
      } catch (error) {
        return ApiResult.error(ErrorHandler.handle(error));
      }
    }
  }
}
