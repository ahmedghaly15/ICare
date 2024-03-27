import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/utils/app_strings.dart';

abstract class EmergencyLocalDatasource {
  String? emergencyDiseasesJson();

  Future<bool> cacheEmergencyDiseases(List<DiseaseData> data);

  List<DiseaseData> getCachedEmergencyDiseases();
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
}
