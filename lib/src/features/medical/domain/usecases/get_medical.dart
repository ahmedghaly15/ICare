import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';
import 'package:icare/src/features/medical/domain/repositories/medical_repo.dart';

class GetMedicalUseCase
    implements BaseUseCase<List<GetMedicalResponse>, NoParams> {
  final MedicalRepo _medicalRepo;

  const GetMedicalUseCase(this._medicalRepo);

  @override
  Future<ApiResult<List<GetMedicalResponse>>> call(NoParams params) async {
    return await _medicalRepo.getMedical();
  }
}
