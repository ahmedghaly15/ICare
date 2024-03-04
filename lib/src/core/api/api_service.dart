import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:icare/src/core/api/end_points.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/features/disease_details/data/models/disease_details.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';
import 'package:icare/src/features/medical_info/data/models/get_medical_info_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(EndPoints.medical)
  Future<List<GetMedicalResponse>> getMedical();

  @GET(EndPoints.emergency)
  Future<List<DiseaseData>> getEmergencyDiseases();

  @GET(EndPoints.medicalInfo)
  Future<List<GetMedicalInfoResponse>> getMedicalInfo();

  @GET('${EndPoints.emergency}{disease_id}')
  Future<DiseaseDetails> getEmergencyDiseaseDetails(
    @Path('disease_id') String diseaseId,
  );
}
