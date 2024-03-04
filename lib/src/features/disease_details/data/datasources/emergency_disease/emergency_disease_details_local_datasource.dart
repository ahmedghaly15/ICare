import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/features/disease_details/data/models/disease_details.dart';

abstract class EmergencyDiseaseDetailsLocalDatasource {
  String? getJsonString(String key);

  Future<bool> cacheEmergencyDiseaseDetails(
    String diseaseName,
    DiseaseDetails data,
  );

  DiseaseDetails getCachedEmergencyDiseaseDetails(String diseaseId);
}

class EmergencyDiseaseDetailsLocalDatasourceImpl
    implements EmergencyDiseaseDetailsLocalDatasource {
  const EmergencyDiseaseDetailsLocalDatasourceImpl();

  @override
  String? getJsonString(String key) {
    return getIt.get<CacheHelper>().getStringData(key: key);
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
