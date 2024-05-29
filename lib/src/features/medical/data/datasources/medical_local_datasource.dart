import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/medical/data/models/get_medical_info_response.dart';

abstract class MedicalLocalDatasource {
  String? emergencyDiseasesJson();
  Future<bool> cacheEmergencyDiseases(List<DiseaseData> data);
  List<DiseaseData> getCachedEmergencyDiseases();

  Future<bool> cacheMedicalInfo(List<GetMedicalInfoResponse> data);
  List<GetMedicalInfoResponse> getCachedMedicalInfo();
  String? cachedMedicalInfoJson();
}

class MedicalLocalDatasourceImpl implements MedicalLocalDatasource {
  const MedicalLocalDatasourceImpl();

  @override
  Future<bool> cacheEmergencyDiseases(List<DiseaseData> data) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedEmergencyDiseases,
          value: json.encode(data.map((e) => e.toJson()).toList()),
        );
  }

  @override
  String? emergencyDiseasesJson() {
    return getIt
        .get<CacheHelper>()
        .getStringData(key: AppStrings.cachedEmergencyDiseases);
  }

  @override
  List<DiseaseData> getCachedEmergencyDiseases() {
    final List<DiseaseData> data = <DiseaseData>[];
    for (final element in json.decode(emergencyDiseasesJson()!)) {
      data.add(DiseaseData.fromJson(element));
    }
    return data;
  }

  @override
  Future<bool> cacheMedicalInfo(List<GetMedicalInfoResponse> data) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedMedicalInfo,
          value: json.encode(data.map((e) => e.toJson()).toList()),
        );
  }

  @override
  String? cachedMedicalInfoJson() {
    return getIt
        .get<CacheHelper>()
        .getStringData(key: AppStrings.cachedMedicalInfo);
  }

  @override
  List<GetMedicalInfoResponse> getCachedMedicalInfo() {
    final List<GetMedicalInfoResponse> data = [];
    for (final element in json.decode(cachedMedicalInfoJson()!)) {
      data.add(GetMedicalInfoResponse.fromJson(element));
    }
    return data;
  }
}
