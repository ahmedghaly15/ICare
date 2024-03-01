import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/features/emergency/data/models/get_emergency_diseases_response.dart';

abstract class EmergencyRemoteDatasource {
  Future<List<GetEmergencyDiseasesResponse>> getEmergencyDiseases();
}

class EmergencyRemoteDatasourceImpl implements EmergencyRemoteDatasource {
  final ApiService _apiService;

  const EmergencyRemoteDatasourceImpl(this._apiService);

  @override
  Future<List<GetEmergencyDiseasesResponse>> getEmergencyDiseases() async {
    return await _apiService.getEmergencyDiseases();
  }
}
