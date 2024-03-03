import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/models/disease_details.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/emergency/data/repositories/emergency_repo.dart';

class GetEmergencyDiseaseDetailsUseCase
    implements BaseUseCase<DiseaseDetails, String> {
  final EmergencyRepo _emergencyRepo;

  const GetEmergencyDiseaseDetailsUseCase(this._emergencyRepo);

  @override
  Future<ApiResult<DiseaseDetails>> call(String params) async {
    return await _emergencyRepo.getEmergencyDiseaseDetails(params);
  }
}
