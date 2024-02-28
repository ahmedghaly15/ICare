import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';

abstract class MedicalDatasource {
  Future<List<GetMedicalResponse>> getMedical();
}

class MedicalDatasourceImpl implements MedicalDatasource {
  final ApiService _apiService;

  const MedicalDatasourceImpl(this._apiService);

  @override
  Future<List<GetMedicalResponse>> getMedical() async {
    return await _apiService.getMedical();
  }
}
