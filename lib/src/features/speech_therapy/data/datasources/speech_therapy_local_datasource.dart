import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/score_response.dart';

abstract class SpeechTherapyLocalDatasource {
  Future<bool> cacheLevelOneTrainingData(List<LevelOneTrainingResponse> data);
  String? levelOneTrainingDataJson();
  List<LevelOneTrainingResponse> retrieveCachedLevelOneTrainingData();
  Future<bool> cacheScoreData(ScoreResponse score);
  String? cachedScoreDataJson();
  ScoreResponse retrieveCachedScoreData();
}

class SpeechTherapyLocalDatasourceImpl implements SpeechTherapyLocalDatasource {
  const SpeechTherapyLocalDatasourceImpl();

  @override
  Future<bool> cacheLevelOneTrainingData(
    List<LevelOneTrainingResponse> data,
  ) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedLevelOneTrainingData,
          value: json.encode(data.map((e) => e.toJson()).toList()),
        );
  }

  @override
  String? levelOneTrainingDataJson() {
    return getIt
        .get<CacheHelper>()
        .getStringData(key: AppStrings.cachedLevelOneTrainingData);
  }

  @override
  List<LevelOneTrainingResponse> retrieveCachedLevelOneTrainingData() {
    final List<LevelOneTrainingResponse> data = <LevelOneTrainingResponse>[];
    for (final element in json.decode(levelOneTrainingDataJson()!)) {
      data.add(LevelOneTrainingResponse.fromJson(element));
    }
    return data;
  }

  @override
  Future<bool> cacheScoreData(ScoreResponse score) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedScoreData,
          value: json.encode(score.toJson()),
        );
  }

  @override
  String? cachedScoreDataJson() {
    return getIt
        .get<CacheHelper>()
        .getStringData(key: AppStrings.cachedScoreData);
  }

  @override
  ScoreResponse retrieveCachedScoreData() {
    return ScoreResponse.fromJson(json.decode(cachedScoreDataJson()!));
  }
}
