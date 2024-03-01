import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/emergency/data/models/get_emergency_diseases_response.dart';

abstract class EmergencyLocalDatasource {
  Future<bool> cacheEmergencyDiseases(List<GetEmergencyDiseasesResponse> data);

  List<GetEmergencyDiseasesResponse> getCachedEmergencyDiseases();

  String? getJsonString();
}

class EmergencyLocalDatasourceImpl implements EmergencyLocalDatasource {
  const EmergencyLocalDatasourceImpl();

  @override
  Future<bool> cacheEmergencyDiseases(
      List<GetEmergencyDiseasesResponse> data) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedEmergencyDiseases,
          value: json.encode(data.map((e) => e.toJson()).toList()),
        );
  }

  @override
  String? getJsonString() {
    return getIt
        .get<CacheHelper>()
        .getStringData(key: AppStrings.cachedEmergencyDiseases);
  }

  @override
  List<GetEmergencyDiseasesResponse> getCachedEmergencyDiseases() {
    final List<GetEmergencyDiseasesResponse> data = [];

    for (final element in json.decode(getJsonString()!)) {
      data.add(GetEmergencyDiseasesResponse.fromJson(element));
    }

    return data;
  }
}
