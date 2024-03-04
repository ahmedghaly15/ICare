import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/disease_details/data/models/disease_details.dart';
import 'package:icare/src/features/disease_details/data/models/get_medical_info_disease_details_params.dart';
import 'package:icare/src/features/disease_details/data/repositories/medical_info_disease_details_repo.dart';

class GetMedicalInfoDiseaseDetailsUseCase
    implements BaseUseCase<DiseaseDetails, GetMedicalInfoDiseaseDetailsParams> {
  final MedicalInfoDiseaseDetailsRepo _repo;

  const GetMedicalInfoDiseaseDetailsUseCase(this._repo);

  @override
  Future<ApiResult<DiseaseDetails>> call(
    GetMedicalInfoDiseaseDetailsParams params,
  ) async {
    return await _repo.getMedicalInfoDiseaseDetails(params: params);
  }
}
