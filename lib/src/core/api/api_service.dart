import 'package:dio/dio.dart';
import 'package:icare/src/core/api/end_points.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(EndPoints.medical)
  Future<List<GetMedicalResponse>> getMedical();

  // @GET()
}
