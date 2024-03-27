import 'package:flutter/material.dart';
import 'package:icare/src/core/api/api_error_handler.dart';
import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/features/medical_info/data/datasources/medical_info_local_datasource.dart';
import 'package:icare/src/features/medical_info/data/datasources/medical_info_remote_datasource.dart';
import 'package:icare/src/features/medical_info/data/models/get_medical_info_response.dart';

class MedicalInfoRepo {
  final MedicalInfoRemoteDatasource _medicalInfoRemoteDatasource;
  final MedicalInfoLocalDatasource _medicalInfoLocalDatasource;

  const MedicalInfoRepo(
    this._medicalInfoRemoteDatasource,
    this._medicalInfoLocalDatasource,
  );

  Future<ApiResult<List<GetMedicalInfoResponse>>> getMedicalInfo() async {
    if (_medicalInfoLocalDatasource.cachedMedicalInfoJson() == null) {
      debugPrint('GOT NO CACHED MEDICAL INFO DATA');

      try {
        final data = await _medicalInfoRemoteDatasource.getMedicalInfo();
        await _medicalInfoLocalDatasource.cacheMedicalInfo(data);
        return ApiResult.success(data);
      } catch (error) {
        return ApiResult.error(ErrorHandler.handle(error));
      }
    } else {
      debugPrint('GOT CACHED MEDICAL INFO DATA');

      return ApiResult.success(
        _medicalInfoLocalDatasource.getCachedMedicalInfo(),
      );
    }
  }
}
