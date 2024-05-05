import 'package:flutter/foundation.dart';
import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/features/disease_details/data/datasources/disease_details_local_datasource.dart';
import 'package:icare/src/features/disease_details/data/datasources/medical_info_disease_details_remote_datasource.dart';
import 'package:icare/src/features/disease_details/data/models/disease_details.dart';
import 'package:icare/src/features/disease_details/data/models/get_medical_info_disease_details_params.dart';

class MedicalInfoDiseaseDetailsRepo {
  final MedicalInfoDiseaseDetailsRemoteDatasource _remoteDatasource;
  final DiseaseDetailsLocalDatasource _localDatasource;

  const MedicalInfoDiseaseDetailsRepo(
    this._remoteDatasource,
    this._localDatasource,
  );

  Future<ApiResult<DiseaseDetails>> getMedicalInfoDiseaseDetails({
    required GetMedicalInfoDiseaseDetailsParams params,
  }) async {
    if (_localDatasource.getJsonString(params.diseaseId) == null) {
      debugPrint('GOT NO CACHED MEDICAL INFO DISEASE DETAILS DATA');
      final data =
          await _remoteDatasource.getMedicalInfoDiseaseDetails(params: params);
      await _localDatasource.cacheDiseaseDetails(params.diseaseId, data);
      return ApiResult.success(data);
    } else {
      debugPrint('GOT CACHED MEDICAL INFO DISEASE DETAILS DATA');
      return ApiResult.success(
        _localDatasource.getCachedDiseaseDetails(params.diseaseId),
      );
    }
  }
}
