import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:icare/src/features/medical_info/data/datasources/medical_info_datasource.dart';
import 'package:icare/src/features/medical_info/data/models/get_medical_info_response.dart';

class MedicalInfoRepo {
  final MedicalInfoDatasource _medicalInfoDatasource;

  const MedicalInfoRepo(this._medicalInfoDatasource);

  Future<ApiResult<List<GetMedicalInfoResponse>>> getMedicalInfo() {
    return executeAndHandleErrors<List<GetMedicalInfoResponse>>(
      () async => await _medicalInfoDatasource.getMedicalInfo(),
    );
  }
}
