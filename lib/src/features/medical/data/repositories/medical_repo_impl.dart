import 'package:icare/src/core/api/api_error_handler.dart';
import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/features/medical/data/datasources/medical_datasource.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';
import 'package:icare/src/features/medical/domain/repositories/medical_repo.dart';

class MedicalRepoImpl implements MedicalRepo {
  final MedicalDatasource _medicalDatasource;

  const MedicalRepoImpl(this._medicalDatasource);

  @override
  Future<ApiResult<GetMedicalResponse>> getMedical() async {
    try {
      final response = await _medicalDatasource.getMedical();

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.error(ErrorHandler.handle(error));
    }
  }
}
