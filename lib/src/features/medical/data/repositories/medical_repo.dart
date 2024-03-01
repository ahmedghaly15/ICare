import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:icare/src/features/medical/data/datasources/medical_datasource.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';

class MedicalRepo {
  final MedicalDatasource _medicalDatasource;

  const MedicalRepo(this._medicalDatasource);

  Future<ApiResult<List<GetMedicalResponse>>> getMedical() {
    return executeAndHandleErrors<List<GetMedicalResponse>>(
      () async => await _medicalDatasource.getMedical(),
    );
  }
}
