import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/medical_info/data/models/get_medical_info_response.dart';

abstract class MedicalInfoLocalDatasource {
  Future<bool> cacheMedicalInfo(List<GetMedicalInfoResponse> data);

  List<GetMedicalInfoResponse> getCachedMedicalInfo();

  String? getJsonString();
}

class MedicalInfoLocalDatasourceImpl implements MedicalInfoLocalDatasource {
  const MedicalInfoLocalDatasourceImpl();

  @override
  Future<bool> cacheMedicalInfo(List<GetMedicalInfoResponse> data) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedMedicalInfo,
          value: json.encode(data.map((e) => e.toJson()).toList()),
        );
  }

  @override
  String? getJsonString() {
    return getIt
        .get<CacheHelper>()
        .getStringData(key: AppStrings.cachedMedicalInfo);
  }

  @override
  List<GetMedicalInfoResponse> getCachedMedicalInfo() {
    final List<GetMedicalInfoResponse> data = [];

    for (final element in json.decode(getJsonString()!)) {
      data.add(GetMedicalInfoResponse.fromJson(element));
    }

    return data;
  }
}
