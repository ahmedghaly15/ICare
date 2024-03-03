import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/models/disease_details.dart';
import 'package:icare/src/core/utils/app_strings.dart';

abstract class EmergencyLocalDatasource {
  String? getJsonString(String key);

  Future<bool> cacheEmergencyDiseases(List<DiseaseData> data);

  List<DiseaseData> getCachedEmergencyDiseases();

  Future<bool> cacheEmergencyDiseaseDetails(
      String diseaseName, DiseaseDetails data);

  DiseaseDetails getCachedEmergencyDiseaseDetails(String diseaseName);
}

class EmergencyLocalDatasourceImpl implements EmergencyLocalDatasource {
  const EmergencyLocalDatasourceImpl();

  @override
  Future<bool> cacheEmergencyDiseases(List<DiseaseData> data) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedEmergencyDiseases,
          value: json.encode(data.map((e) => e.toJson()).toList()),
        );
  }

  @override
  String? getJsonString(String key) {
    return getIt.get<CacheHelper>().getStringData(key: key);
  }

  @override
  List<DiseaseData> getCachedEmergencyDiseases() {
    final List<DiseaseData> data = [];

    for (final element
        in json.decode(getJsonString(AppStrings.cachedEmergencyDiseases)!)) {
      data.add(DiseaseData.fromJson(element));
    }

    return data;
  }

  @override
  Future<bool> cacheEmergencyDiseaseDetails(
    String key,
    DiseaseDetails data,
  ) async {
    return await getIt.get<CacheHelper>().saveData(
          key: key,
          value: json.encode(data.toJson()),
        );
  }

  @override
  DiseaseDetails getCachedEmergencyDiseaseDetails(String key) {
    return DiseaseDetails.fromJson(json.decode(getJsonString(key)!));
  }
}
