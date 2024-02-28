import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';

abstract class MedicalRepo {
  Future<ApiResult<List<GetMedicalResponse>>> getMedical();
}
