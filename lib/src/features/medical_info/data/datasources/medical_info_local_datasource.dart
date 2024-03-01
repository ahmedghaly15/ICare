import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/medical_info/data/models/get_medical_info_response.dart';

abstract class MedicalInfoLocalDatasource {
  Future<bool> cacheMedicalInfo(List<GetMedicalInfoResponse> data);

  List<GetMedicalInfoResponse> getCachedMedicalInfo();
}

class MedicalInfoLocalDatasourceImpl implements MedicalInfoLocalDatasource {
  @override
  Future<bool> cacheMedicalInfo(List<GetMedicalInfoResponse> data) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedMedicalInfo,
          value: json.encode(data.map((e) => e.toJson()).toList()),
        );
  }

  @override
  List<GetMedicalInfoResponse> getCachedMedicalInfo() {
    final String? jsonString = getIt
        .get<CacheHelper>()
        .getStringData(key: AppStrings.cachedMedicalInfo);

    final List<GetMedicalInfoResponse> data = [];

    for (final element in json.decode(jsonString!)) {
      data.add(GetMedicalInfoResponse.fromJson(element));
    }

    return data;
  }
}
