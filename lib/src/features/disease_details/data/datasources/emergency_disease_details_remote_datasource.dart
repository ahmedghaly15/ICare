import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/features/disease_details/data/models/disease_details.dart';

abstract class EmergencyDiseaseDetailsRemoteDatasource {
  Future<DiseaseDetails> getEmergencyDiseaseDetails(String diseaseId);
}

class EmergencyDiseaseDetailsRemoteDatasourceImpl
    implements EmergencyDiseaseDetailsRemoteDatasource {
  final ApiService _apiService;

  const EmergencyDiseaseDetailsRemoteDatasourceImpl(this._apiService);

  @override
  Future<DiseaseDetails> getEmergencyDiseaseDetails(String diseaseId) async {
    return await _apiService.getEmergencyDiseaseDetails(diseaseId);
  }
}
