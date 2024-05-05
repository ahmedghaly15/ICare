import 'package:flutter/material.dart';
import 'package:icare/src/core/api/api_error_handler.dart';
import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/features/disease_details/data/datasources/disease_details_local_datasource.dart';
import 'package:icare/src/features/disease_details/data/datasources/emergency_disease_details_remote_datasource.dart';
import 'package:icare/src/features/disease_details/data/models/disease_details.dart';

class EmergencyDiseaseDetailsRepo {
  final DiseaseDetailsLocalDatasource _localDatasource;
  final EmergencyDiseaseDetailsRemoteDatasource _remoteDatasource;

  const EmergencyDiseaseDetailsRepo(
    this._remoteDatasource,
    this._localDatasource,
  );

  Future<ApiResult<DiseaseDetails>> getEmergencyDiseaseDetails(
    String diseaseId,
  ) async {
    if (_localDatasource.getJsonString(diseaseId) == null) {
      try {
        debugPrint('GOT NO CACHED EMERGENCY DISEASE DETAILS DATA');
        final data =
            await _remoteDatasource.getEmergencyDiseaseDetails(diseaseId);
        await _localDatasource.cacheDiseaseDetails(
          diseaseId,
          data,
        );
        return ApiResult.success(data);
      } catch (error) {
        return ApiResult.error(ErrorHandler.handle(error));
      }
    } else {
      debugPrint('GOT CACHED EMERGENCY DISEASE DETAILS DATA');
      return ApiResult.success(
        _localDatasource.getCachedDiseaseDetails(diseaseId),
      );
    }
  }
}
