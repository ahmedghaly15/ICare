import 'package:flutter/material.dart';
import 'package:icare/src/core/api/api_error_handler.dart';
import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/features/medical/data/datasources/medical_local_datasource.dart';
import 'package:icare/src/features/medical/data/datasources/medical_remote_datasource.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';

class MedicalRepo {
  final MedicalRemoteDatasource _medicalRemoteDatasource;
  final MedicalLocalDatasource _medicalLocalDatasource;

  const MedicalRepo(
    this._medicalRemoteDatasource,
    this._medicalLocalDatasource,
  );

  Future<ApiResult<List<GetMedicalResponse>>> getMedical() async {
    if (_medicalLocalDatasource.getJsonString() == null) {
      debugPrint('GOT NO CACHED MEDICAL DATA');

      try {
        final data = await _medicalRemoteDatasource.getMedical();
        await _medicalLocalDatasource.cacheMedical(data);
        return ApiResult.success(data);
      } catch (error) {
        debugPrint('ERROR: ${error.toString()}');
        return ApiResult.error(ErrorHandler.handle(error));
      }
    } else {
      debugPrint('GOT CACHED MEDICAL DATA');

      return ApiResult.success(
        _medicalLocalDatasource.getCachedMedical(),
      );
    }
  }
}
