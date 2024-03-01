import 'package:flutter/material.dart';
import 'package:icare/src/core/api/api_error_handler.dart';
import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/features/emergency/data/datasources/emergency_remote_datasource.dart';
import 'package:icare/src/features/emergency/data/datasources/emergency_local_datasource.dart';
import 'package:icare/src/features/emergency/data/models/get_emergency_diseases_response.dart';

class EmergencyRepo {
  final EmergencyRemoteDatasource _emergencyRemoteDatasource;
  final EmergencyLocalDatasource _emergencyLocalDatasource;

  const EmergencyRepo(
    this._emergencyRemoteDatasource,
    this._emergencyLocalDatasource,
  );

  Future<ApiResult<List<GetEmergencyDiseasesResponse>>>
      getEmergencyDiseases() async {
    if (_emergencyLocalDatasource.getJsonString() == null) {
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
}
