import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/medical_info/data/models/get_medical_info_response.dart';
import 'package:icare/src/features/medical_info/data/repositories/medical_info_repo.dart';

class GetMedicalInfoUseCase
    implements BaseUseCase<List<GetMedicalInfoResponse>, NoParams> {
  final MedicalInfoRepo _medicalInfoRepo;

  const GetMedicalInfoUseCase(this._medicalInfoRepo);

  @override
  Future<ApiResult<List<GetMedicalInfoResponse>>> call(NoParams params) async {
    return await _medicalInfoRepo.getMedicalInfo();
  }
}
