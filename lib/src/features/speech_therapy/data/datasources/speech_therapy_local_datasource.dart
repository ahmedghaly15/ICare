import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';

abstract class SpeechTherapyLocalDatasource {
  Future<bool> cacheLevelOneTrainingData(List<LevelOneTrainingResponse> data);
  String? levelOneTrainingDataJson();
  List<LevelOneTrainingResponse> retrieveCachedLevelOneTrainingData();
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
}
