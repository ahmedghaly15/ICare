import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/features/medical/data/models/get_medical_info_response.dart';

abstract class MedicalRemoteDatasource {
  Future<List<DiseaseData>> getEmergencyDiseases();
  Future<List<GetMedicalInfoResponse>> getMedicalInfo();
}

class MedicalRemoteDatasourceImpl implements MedicalRemoteDatasource {
  final ApiService _apiService;

  const MedicalRemoteDatasourceImpl(this._apiService);

  @override
  Future<List<DiseaseData>> getEmergencyDiseases() async {
    return await _apiService.getEmergencyDiseases();
  }

  @override
  Future<List<GetMedicalInfoResponse>> getMedicalInfo() async {
    return await _apiService.getMedicalInfo();
  }
}
