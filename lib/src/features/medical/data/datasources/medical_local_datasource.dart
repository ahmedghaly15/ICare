import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';

abstract class MedicalLocalDatasource {
  Future<bool> cacheMedical(List<GetMedicalResponse> data);

  List<GetMedicalResponse> getCachedMedical();

  String? getJsonString();
}

class MedicalLocalDatasourceImpl implements MedicalLocalDatasource {
  const MedicalLocalDatasourceImpl();

  @override
  Future<bool> cacheMedical(List<GetMedicalResponse> data) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedMedical,
          value: json.encode(data.map((e) => e.toJson()).toList()),
        );
  }

  @override
  String? getJsonString() {
    return getIt
        .get<CacheHelper>()
        .getStringData(key: AppStrings.cachedMedical);
  }

  @override
  List<GetMedicalResponse> getCachedMedical() {
    final List<GetMedicalResponse> data = [];

    for (final element in json.decode(getJsonString()!)) {
      data.add(GetMedicalResponse.fromJson(element));
    }

    return data;
  }
}
