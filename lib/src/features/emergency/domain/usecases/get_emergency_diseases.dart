import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/emergency/data/models/get_emergency_diseases_response.dart';
import 'package:icare/src/features/emergency/data/repositories/emergency_repo.dart';

class GetEmergencyDiseasesUseCase
    implements BaseUseCase<List<GetEmergencyDiseasesResponse>, NoParams> {
  final EmergencyRepo _emergencyRepo;

  const GetEmergencyDiseasesUseCase(this._emergencyRepo);

  @override
  Future<ApiResult<List<GetEmergencyDiseasesResponse>>> call(
      NoParams params) async {
    return await _emergencyRepo.getEmergencyDiseases();
  }
}
