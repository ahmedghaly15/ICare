import 'package:flutter/material.dart';
import 'package:icare/src/core/api/api_error_handler.dart';
import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:icare/src/features/speech_therapy/data/datasources/speech_therapy_local_datasource.dart';
import 'package:icare/src/features/speech_therapy/data/datasources/speech_therapy_remote_datasource.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_two_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_params.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/score_params.dart';
import 'package:icare/src/features/speech_therapy/data/models/score_response.dart';
import 'package:icare/src/features/speech_therapy/domain/repositories/speech_therapy_repo.dart';

class SpeechTherapyRepoImpl implements SpeechTherapyRepo {
  final SpeechTherapyRemoteDatasource _speechTherapyRemoteDatasource;
  final SpeechTherapyLocalDatasource _speechTherapyLocalDatasource;

  const SpeechTherapyRepoImpl(
    this._speechTherapyRemoteDatasource,
    this._speechTherapyLocalDatasource,
  );

  @override
  Future<ApiResult<List<LevelOneTrainingResponse>>> getLevelOneTrainingData(
    String userId,
  ) async {
    if (_speechTherapyLocalDatasource.levelOneTrainingDataJson() == null) {
      debugPrint(
          '************ GOT NO CACHED LEVEL ONE TRAINING DATA ************');
      try {
        final data = await _speechTherapyRemoteDatasource
            .getLevelOneTrainingData(userId);
        await _speechTherapyLocalDatasource.cacheLevelOneTrainingData(data);
        return ApiResult.success(data);
      } catch (error) {
        return ApiResult.error(ErrorHandler.handle(error));
      }
    } else {
      debugPrint(
          '************ GOT CACHED LEVEL ONE TRAINING DATA ************');
      return ApiResult.success(
        _speechTherapyLocalDatasource.retrieveCachedLevelOneTrainingData(),
      );
    }
  }

  @override
  Future<ApiResult<MarkResponse>> markLevelOneExam(
    MarkParams params,
  ) {
    return executeAndHandleErrors<MarkResponse>(
      () async => await _speechTherapyRemoteDatasource.markLevelOneExam(params),
    );
  }

  @override
  Future<ApiResult<ScoreResponse>> score(ScoreParams params) async {
    if (_speechTherapyLocalDatasource.cachedScoreDataJson(params.level) ==
        null) {
      debugPrint('************ GOT NO CACHED SCORE DATA ************');
      try {
        final data = await _speechTherapyRemoteDatasource.score(params);
        await _speechTherapyLocalDatasource.cacheScoreData(data, params.level);
        return ApiResult.success(data);
      } catch (error) {
        return ApiResult.error(ErrorHandler.handle(error));
      }
    } else {
      debugPrint('************ GOT CACHED SCORE DATA ************');
      return ApiResult.success(
        _speechTherapyLocalDatasource.retrieveCachedScoreData(params.level),
      );
    }
  }

  @override
  Future<ApiResult<List<LevelTwoTrainingResponse>>> getLevelTwoTrainingData(
    String userId,
  ) async {
    if (_speechTherapyLocalDatasource.levelTwoTrainingDataJson() == null) {
      debugPrint(
          '************ GOT NO CACHED LEVEL TWO TRAINING DATA ************');
      try {
        final data = await _speechTherapyRemoteDatasource
            .getLevelTwoTrainingData(userId);
        await _speechTherapyLocalDatasource.cacheLevelTwoTrainingData(data);
        return ApiResult.success(data);
      } catch (error) {
        return ApiResult.error(ErrorHandler.handle(error));
      }
    } else {
      debugPrint(
          '************ GOT CACHED LEVEL TWO TRAINING DATA ************');
      return ApiResult.success(
        _speechTherapyLocalDatasource.retrieveCachedLevelTwoTrainingData(),
      );
    }
  }

  @override
  Future<ApiResult<List<AdvancedLevelTrainingResponse>>>
      getAdvancedLevelTrainingData() async {
    if (_speechTherapyLocalDatasource.advancedLevelTrainingDataJson() == null) {
      debugPrint(
          '************ GOT NO CACHED ADVANCED LEVEL TRAINING DATA ************');
      try {
        final data =
            await _speechTherapyRemoteDatasource.getAdvancedLevelTrainingData();
        await _speechTherapyLocalDatasource
            .cacheAdvancedLevelTrainingData(data);
        return ApiResult.success(data);
      } catch (error) {
        return ApiResult.error(ErrorHandler.handle(error));
      }
    } else {
      debugPrint(
          '************ GOT CACHED ADVANCED LEVEL TRAINING DATA ************');
      return ApiResult.success(
        _speechTherapyLocalDatasource.retrieveCachedAdvancedLevelTrainingData(),
      );
    }
  }
}
