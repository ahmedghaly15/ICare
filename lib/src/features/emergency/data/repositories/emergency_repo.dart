import 'package:flutter/material.dart';
import 'package:icare/src/core/api/api_error_handler.dart';
import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/models/disease_details.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/emergency/data/datasources/emergency_remote_datasource.dart';
import 'package:icare/src/features/emergency/data/datasources/emergency_local_datasource.dart';

class EmergencyRepo {
  final EmergencyRemoteDatasource _emergencyRemoteDatasource;
  final EmergencyLocalDatasource _emergencyLocalDatasource;

  const EmergencyRepo(
    this._emergencyRemoteDatasource,
    this._emergencyLocalDatasource,
  );

  Future<ApiResult<List<DiseaseData>>> getEmergencyDiseases() async {
    if (_emergencyLocalDatasource
            .getJsonString(AppStrings.cachedEmergencyDiseases) ==
        null) {
      debugPrint('GOT NO CACHED EMERGENCY DATA');

      try {
        final data = await _emergencyRemoteDatasource.getEmergencyDiseases();
        await _emergencyLocalDatasource.cacheEmergencyDiseases(data);
        return ApiResult.success(data);
      } catch (error) {
        return ApiResult.error(ErrorHandler.handle(error));
      }
    } else {
      debugPrint('GOT CACHED EMERGENCY DATA');

      return ApiResult.success(
        _emergencyLocalDatasource.getCachedEmergencyDiseases(),
      );
    }
  }

  Future<ApiResult<DiseaseDetails>> getEmergencyDiseaseDetails(
    String diseaseName,
  ) async {
    if (_emergencyLocalDatasource.getJsonString(diseaseName) == null) {
      debugPrint('GOT NO CACHED EMERGENCY DISEASE DETAILS DATA');

      final data = await _emergencyRemoteDatasource
          .getEmergencyDiseaseDetails(diseaseName);

      await _emergencyLocalDatasource.cacheEmergencyDiseaseDetails(
          diseaseName, data);

      return ApiResult.success(data);
    } else {
      debugPrint('GOT CACHED EMERGENCY DISEASE DETAILS DATA');

      return ApiResult.success(
        _emergencyLocalDatasource.getCachedEmergencyDiseaseDetails(diseaseName),
      );
    }
  }
}
