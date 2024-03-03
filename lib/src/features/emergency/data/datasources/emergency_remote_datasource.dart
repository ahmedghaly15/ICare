import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/models/disease_details.dart';

abstract class EmergencyRemoteDatasource {
  Future<List<DiseaseData>> getEmergencyDiseases();

  Future<DiseaseDetails> getEmergencyDiseaseDetails(String diseaseName);
}

class EmergencyRemoteDatasourceImpl implements EmergencyRemoteDatasource {
  final ApiService _apiService;

  const EmergencyRemoteDatasourceImpl(this._apiService);

  @override
  Future<List<DiseaseData>> getEmergencyDiseases() async {
    return await _apiService.getEmergencyDiseases();
  }

  @override
  Future<DiseaseDetails> getEmergencyDiseaseDetails(String diseaseName) async {
    return await _apiService.getEmergencyDiseaseDetails(diseaseName);
  }
}
