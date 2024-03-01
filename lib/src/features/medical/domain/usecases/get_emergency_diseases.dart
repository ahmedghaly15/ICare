import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/medical/data/models/get_emergency_diseases_response.dart';
import 'package:icare/src/features/medical/domain/repositories/medical_repo.dart';

class GetEmergencyDiseasesUseCase
    implements
        BaseUseCases<ApiResult<List<GetEmergencyDiseasesResponse>>, NoParams> {
  final MedicalRepo _medicalRepo;

  const GetEmergencyDiseasesUseCase(this._medicalRepo);

  @override
  Future<ApiResult<List<GetEmergencyDiseasesResponse>>> call(
      NoParams params) async {
    return await _medicalRepo.getEmergencyDiseases();
  }
}
