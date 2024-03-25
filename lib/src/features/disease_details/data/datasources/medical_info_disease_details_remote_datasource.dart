import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/features/disease_details/data/models/disease_details.dart';
import 'package:icare/src/features/disease_details/data/models/get_medical_info_disease_details_params.dart';

abstract class MedicalInfoDiseaseDetailsRemoteDatasource {
  Future<DiseaseDetails> getMedicalInfoDiseaseDetails({
    required GetMedicalInfoDiseaseDetailsParams params,
  });
}

class MedicalInfoDiseaseDetailsRemoteDatasourceImpl
    implements MedicalInfoDiseaseDetailsRemoteDatasource {
  final ApiService _apiService;

  const MedicalInfoDiseaseDetailsRemoteDatasourceImpl(this._apiService);

  @override
  Future<DiseaseDetails> getMedicalInfoDiseaseDetails({
    required GetMedicalInfoDiseaseDetailsParams params,
  }) async {
    return await _apiService.getMedicalInfoDiseaseDetails(
      diseaseType: params.diseaseType,
      diseaseId: params.diseaseId,
    );
  }
}
