import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/features/disease_details/data/models/disease_details.dart';

abstract class DiseaseDetailsLocalDatasource {
  String? getJsonString(String key);

  Future<bool> cacheDiseaseDetails(
    String diseaseName,
    DiseaseDetails data,
  );

  DiseaseDetails getCachedDiseaseDetails(String diseaseId);
}

class DiseaseDetailsLocalDatasourceImpl
    implements DiseaseDetailsLocalDatasource {
  const DiseaseDetailsLocalDatasourceImpl();

  @override
  String? getJsonString(String key) {
    return getIt.get<CacheHelper>().getStringData(key: key);
  }

  @override
  Future<bool> cacheDiseaseDetails(
    String key,
    DiseaseDetails data,
  ) async {
    return await getIt.get<CacheHelper>().saveData(
          key: key,
          value: json.encode(data.toJson()),
        );
  }

  @override
  DiseaseDetails getCachedDiseaseDetails(String key) {
    return DiseaseDetails.fromJson(json.decode(getJsonString(key)!));
  }
}
