import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/disease_details/data/models/disease_details.dart';
import 'package:icare/src/features/disease_details/data/repositories/emergency_disease_details_repo.dart';

class GetEmergencyDiseaseDetailsUseCase
    implements BaseUseCase<DiseaseDetails, String> {
  final EmergencyDiseaseDetailsRepo _emergencyDiseaseDetailsRepo;

  const GetEmergencyDiseaseDetailsUseCase(this._emergencyDiseaseDetailsRepo);

  @override
  Future<ApiResult<DiseaseDetails>> call(String params) async {
    return await _emergencyDiseaseDetailsRepo
        .getEmergencyDiseaseDetails(params);
  }
}
