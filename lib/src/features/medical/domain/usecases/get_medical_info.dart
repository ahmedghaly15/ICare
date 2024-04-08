import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/medical/data/models/get_medical_info_response.dart';
import 'package:icare/src/features/medical/data/repositories/medical_repo.dart';

class GetMedicalInfoUseCase
    implements BaseUseCase<List<GetMedicalInfoResponse>, NoParams> {
  final MedicalRepo _medicalRepo;

  const GetMedicalInfoUseCase(this._medicalRepo);

  @override
  Future<ApiResult<List<GetMedicalInfoResponse>>> call(NoParams params) async {
    return await _medicalRepo.getMedicalInfo();
  }
}
