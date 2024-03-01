import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:icare/src/features/emergency/data/datasources/emergency_datasource.dart';
import 'package:icare/src/features/emergency/data/models/get_emergency_diseases_response.dart';

class EmergencyRepo {
  final EmergencyDatasource _emergencyDatasource;

  const EmergencyRepo(this._emergencyDatasource);

  Future<ApiResult<List<GetEmergencyDiseasesResponse>>> getEmergencyDiseases() {
    return executeAndHandleErrors<List<GetEmergencyDiseasesResponse>>(
      () async => await _emergencyDatasource.getEmergencyDiseases(),
    );
  }
}
