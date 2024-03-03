import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/emergency/data/repositories/emergency_repo.dart';

class GetEmergencyDiseasesUseCase
    implements BaseUseCase<List<DiseaseData>, NoParams> {
  final EmergencyRepo _emergencyRepo;

  const GetEmergencyDiseasesUseCase(this._emergencyRepo);

  @override
  Future<ApiResult<List<DiseaseData>>> call(NoParams params) async {
    return await _emergencyRepo.getEmergencyDiseases();
  }
}
