import 'package:flutter/material.dart';
import 'package:icare/src/core/api/api_error_handler.dart';
import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/features/medical/data/datasources/medical_local_datasource.dart';
import 'package:icare/src/features/medical/data/datasources/medical_remote_datasource.dart';
import 'package:icare/src/features/medical/data/models/get_medical_info_response.dart';

class MedicalRepo {
  final MedicalRemoteDatasource _medicalRemoteDatasource;
  final MedicalLocalDatasource _medicalLocalDatasource;

  const MedicalRepo(
    this._medicalRemoteDatasource,
    this._medicalLocalDatasource,
  );

  Future<ApiResult<List<DiseaseData>>> getEmergencyDiseases() async {
    if (_medicalLocalDatasource.emergencyDiseasesJson() == null) {
      debugPrint('GOT NO CACHED EMERGENCY DATA');
      try {
        final data = await _medicalRemoteDatasource.getEmergencyDiseases();
        await _medicalLocalDatasource.cacheEmergencyDiseases(data);
        return ApiResult.success(data);
      } catch (error) {
        return ApiResult.error(ErrorHandler.handle(error));
      }
    } else {
      debugPrint('GOT CACHED EMERGENCY DATA');
      return ApiResult.success(
        _medicalLocalDatasource.getCachedEmergencyDiseases(),
      );
    }
  }

  Future<ApiResult<List<GetMedicalInfoResponse>>> getMedicalInfo() async {
    if (_medicalLocalDatasource.cachedMedicalInfoJson() == null) {
      debugPrint('GOT NO CACHED MEDICAL INFO DATA');
      try {
        final data = await _medicalRemoteDatasource.getMedicalInfo();
        await _medicalLocalDatasource.cacheMedicalInfo(data);
        return ApiResult.success(data);
      } catch (error) {
        return ApiResult.error(ErrorHandler.handle(error));
      }
    } else {
      debugPrint('GOT CACHED MEDICAL INFO DATA');
      return ApiResult.success(
        _medicalLocalDatasource.getCachedMedicalInfo(),
      );
    }
  }
}
