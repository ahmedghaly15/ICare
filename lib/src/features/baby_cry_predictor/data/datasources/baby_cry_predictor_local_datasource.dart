import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_class.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/last_result_response.dart';

abstract class BabyCryPredictorLocalDatasource {
  Future<bool> cacheBabyCryPredictorAbout(String about);
  String? cachedBabyCryPredictorAboutJson();
  String retrieveCachedBabyCryPredictorAbout();
  Future<bool> cacheBabyCryPredictorClasses(
    List<BabyCryPredictorClass> classes,
  );
  String? cachedBabyCryPredictorClassesJson();
  List<BabyCryPredictorClass> retrieveCachedBabyCryPredictorClasses();
  Future<bool> cacheBabyCryPredictorLastResult(LastResultResponse lastResult);
  String? cachedBabyCryPredictorLastResultJson();
  LastResultResponse retrieveCachedBabyCryPredictorLastResult();
}

class BabyCryPredictorLocalDatasourceImpl
    implements BabyCryPredictorLocalDatasource {
  const BabyCryPredictorLocalDatasourceImpl();

  @override
  Future<bool> cacheBabyCryPredictorAbout(String about) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedAbout,
          value: json.encode(about),
        );
  }

  @override
  String? cachedBabyCryPredictorAboutJson() {
    return getIt.get<CacheHelper>().getStringData(key: AppStrings.cachedAbout);
  }

  @override
  String retrieveCachedBabyCryPredictorAbout() {
    return json.decode(cachedBabyCryPredictorAboutJson()!);
  }

  @override
  Future<bool> cacheBabyCryPredictorClasses(
    List<BabyCryPredictorClass> classes,
  ) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedBabyCryPredictorClasses,
          value: json.encode(classes.map((e) => e.toJson()).toList()),
        );
  }

  @override
  String? cachedBabyCryPredictorClassesJson() {
    return getIt
        .get<CacheHelper>()
        .getStringData(key: AppStrings.cachedBabyCryPredictorClasses);
  }

  @override
  List<BabyCryPredictorClass> retrieveCachedBabyCryPredictorClasses() {
    final List<BabyCryPredictorClass> classes = <BabyCryPredictorClass>[];
    for (final element in json.decode(cachedBabyCryPredictorClassesJson()!)) {
      classes.add(BabyCryPredictorClass.fromJson(element));
    }
    return classes;
  }

  @override
  Future<bool> cacheBabyCryPredictorLastResult(
    LastResultResponse lastResult,
  ) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedBabyCryPredictorLastResult,
          value: json.encode(lastResult.toJson()),
        );
  }

  @override
  String? cachedBabyCryPredictorLastResultJson() {
    return getIt
        .get<CacheHelper>()
        .getStringData(key: AppStrings.cachedBabyCryPredictorLastResult);
  }

  @override
  LastResultResponse retrieveCachedBabyCryPredictorLastResult() {
    return json.decode(cachedBabyCryPredictorLastResultJson()!);
  }
}
