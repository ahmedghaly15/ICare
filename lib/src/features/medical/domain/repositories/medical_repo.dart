import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/features/medical/data/models/get_emergency_diseases_response.dart';
import 'package:icare/src/features/medical/data/models/get_medical_info_response.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';

abstract class MedicalRepo {
  Future<ApiResult<List<GetMedicalResponse>>> getMedical();

  Future<ApiResult<List<GetEmergencyDiseasesResponse>>> getEmergencyDiseases();

  Future<ApiResult<List<GetMedicalInfoResponse>>> getMedicalInfo();
}
