import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_two_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/score_response.dart';

abstract class SpeechTherapyLocalDatasource {
  Future<bool> cacheLevelOneTrainingData(List<LevelOneTrainingResponse> data);
  String? levelOneTrainingDataJson();
  List<LevelOneTrainingResponse> retrieveCachedLevelOneTrainingData();
  Future<bool> cacheScoreData(ScoreResponse score, int level);
  String? cachedScoreDataJson(int level);
  ScoreResponse retrieveCachedScoreData(int level);
  Future<bool> cacheLevelTwoTrainingData(List<LevelTwoTrainingResponse> data);
  String? levelTwoTrainingDataJson();
  List<LevelTwoTrainingResponse> retrieveCachedLevelTwoTrainingData();
  Future<bool> cacheAdvancedLevelTrainingData(
    List<AdvancedLevelTrainingResponse> data,
  );
  String? advancedLevelTrainingDataJson();
  List<AdvancedLevelTrainingResponse> retrieveCachedAdvancedLevelTrainingData();
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
  Future<bool> cacheScoreData(ScoreResponse score, int level) async {
    return await getIt.get<CacheHelper>().saveData(
          key: '${AppStrings.cachedScoreData}level$level',
          value: json.encode(score.toJson()),
        );
  }

  @override
  String? cachedScoreDataJson(int level) {
    return getIt
        .get<CacheHelper>()
        .getStringData(key: '${AppStrings.cachedScoreData}level$level');
  }

  @override
  ScoreResponse retrieveCachedScoreData(int level) {
    return ScoreResponse.fromJson(json.decode(cachedScoreDataJson(level)!));
  }

  @override
  Future<bool> cacheLevelTwoTrainingData(
    List<LevelTwoTrainingResponse> data,
  ) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedLevelTwoTrainingData,
          value: json.encode(data.map((e) => e.toJson()).toList()),
        );
  }

  @override
  String? levelTwoTrainingDataJson() {
    return getIt
        .get<CacheHelper>()
        .getStringData(key: AppStrings.cachedLevelTwoTrainingData);
  }

  @override
  List<LevelTwoTrainingResponse> retrieveCachedLevelTwoTrainingData() {
    final List<LevelTwoTrainingResponse> data = <LevelTwoTrainingResponse>[];
    for (final element in json.decode(levelTwoTrainingDataJson()!)) {
      data.add(LevelTwoTrainingResponse.fromJson(element));
    }
    return data;
  }

  @override
  String? advancedLevelTrainingDataJson() {
    return getIt
        .get<CacheHelper>()
        .getStringData(key: AppStrings.cachedAdvancedLevelTrainingData);
  }

  @override
  Future<bool> cacheAdvancedLevelTrainingData(
    List<AdvancedLevelTrainingResponse> data,
  ) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedAdvancedLevelTrainingData,
          value: json.encode(data.map((e) => e.toJson()).toList()),
        );
  }

  @override
  List<AdvancedLevelTrainingResponse>
      retrieveCachedAdvancedLevelTrainingData() {
    final List<AdvancedLevelTrainingResponse> data =
        <AdvancedLevelTrainingResponse>[];
    for (final element in json.decode(advancedLevelTrainingDataJson()!)) {
      data.add(AdvancedLevelTrainingResponse.fromJson(element));
    }
    return data;
  }
}
