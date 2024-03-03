import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/core/models/disease_data.dart';

abstract class EmergencyRemoteDatasource {
  Future<List<DiseaseData>> getEmergencyDiseases();
}

class EmergencyRemoteDatasourceImpl implements EmergencyRemoteDatasource {
  final ApiService _apiService;

  const EmergencyRemoteDatasourceImpl(this._apiService);

  @override
  Future<List<DiseaseData>> getEmergencyDiseases() async {
    return await _apiService.getEmergencyDiseases();
  }
}
