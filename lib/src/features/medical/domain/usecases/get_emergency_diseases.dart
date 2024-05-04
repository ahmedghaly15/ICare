import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/medical/data/repositories/medical_repo.dart';

class GetEmergencyDiseasesUseCase
    implements BaseUseCase<List<DiseaseData>, NoParams> {
  final MedicalRepo _medicalRepo;

  const GetEmergencyDiseasesUseCase(this._medicalRepo);

  @override
  Future<ApiResult<List<DiseaseData>>> call(NoParams params) async {
    return await _medicalRepo.getEmergencyDiseases();
  }
}
