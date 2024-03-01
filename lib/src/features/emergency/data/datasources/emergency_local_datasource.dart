import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/emergency/data/models/get_emergency_diseases_response.dart';

abstract class EmergencyLocalDatasource {
  Future<void> cacheEmergencyDiseases(List<GetEmergencyDiseasesResponse> data);

  Future<List<GetEmergencyDiseasesResponse>> getCachedEmergencyDiseases();
}

class EmergencyLocalDatasourceImpl implements EmergencyLocalDatasource {
  @override
  Future<bool> cacheEmergencyDiseases(
      List<GetEmergencyDiseasesResponse> data) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedEmergencyDiseases,
          value: json.encode(data.map((e) => e.toJson()).toList()),
        );
  }

  @override
  Future<List<GetEmergencyDiseasesResponse>>
      getCachedEmergencyDiseases() async {
    final String? jsonString = getIt
        .get<CacheHelper>()
        .getStringData(key: AppStrings.cachedEmergencyDiseases);

    final List<GetEmergencyDiseasesResponse> data = [];

    for (var element in json.decode(jsonString!)) {
      data.add(GetEmergencyDiseasesResponse.fromJson(element));
    }

    return data;
  }
}
