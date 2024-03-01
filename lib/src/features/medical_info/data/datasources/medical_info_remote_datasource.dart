import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/features/medical_info/data/models/get_medical_info_response.dart';

abstract class MedicalInfoRemoteDatasource {
  Future<List<GetMedicalInfoResponse>> getMedicalInfo();
}

class MedicalInfoDatasourceImpl implements MedicalInfoRemoteDatasource {
  final ApiService _apiService;

  const MedicalInfoDatasourceImpl(this._apiService);

  @override
  Future<List<GetMedicalInfoResponse>> getMedicalInfo() async {
    return await _apiService.getMedicalInfo();
  }
}
