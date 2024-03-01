import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:icare/src/features/medical/data/datasources/medical_datasource.dart';
import 'package:icare/src/features/medical/data/models/get_emergency_diseases_response.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';
import 'package:icare/src/features/medical/domain/repositories/medical_repo.dart';

class MedicalRepoImpl implements MedicalRepo {
  final MedicalDatasource _medicalDatasource;

  const MedicalRepoImpl(this._medicalDatasource);

  @override
  Future<ApiResult<List<GetMedicalResponse>>> getMedical() {
    return executeAndHandleErrors<List<GetMedicalResponse>>(
      () async => await _medicalDatasource.getMedical(),
    );
  }

  @override
  Future<ApiResult<List<GetEmergencyDiseasesResponse>>> getEmergencyDiseases() {
    return executeAndHandleErrors<List<GetEmergencyDiseasesResponse>>(
      () async => await _medicalDatasource.getEmergencyDiseases(),
    );
  }
}
