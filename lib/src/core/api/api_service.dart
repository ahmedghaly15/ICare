import 'dart:io';

import 'package:dio/dio.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_response.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_response.dart';
import 'package:icare/src/features/icare_bot/data/models/delete_bookmark_response.dart';
import 'package:icare/src/features/tips/data/models/get_random_tip_response.dart';
import 'package:retrofit/retrofit.dart';

import 'package:icare/src/core/api/end_points.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/features/disease_details/data/models/disease_details.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';
import 'package:icare/src/features/medical_info/data/models/get_medical_info_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: EndPoints.databaseBaseUrl)
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

  @GET('${EndPoints.databaseBaseUrl}{disease_type}')
  Future<DiseaseDetails> getMedicalInfoDiseaseDetails({
    @Path('disease_type') required String diseaseType,
    @Query('disease_id') required String diseaseId,
  });

  @POST(EndPoints.babyCryPredictor)
  @MultiPart()
  Future<BabyCryPredictorResponse> babyCryPredictor(
    @Part(name: 'baby_cry_audio') File babyCryAudio,
  );

  @GET(EndPoints.getRandomTip)
  Future<GetRandomTipResponse> getRandomTip();

  @POST(EndPoints.bookmarkICareBotMessage)
  Future<BookmarkICareBotMessageResponse> bookmarkICareBotMessage({
    @Query('user_id') required String userId,
    @Query('chat_response') required String chatResponse,
  });

  @GET('${EndPoints.retrieveBookmarks}{user_id}')
  Future<List<BookmarkICareBotMessageResponse>> retrieveICareBotBookmarks(
    @Path('user_id') String userId,
  );

  @DELETE('${EndPoints.deleteBookmark}{user_id}/{bookmark_id}/')
  Future<DeleteBookmarkResponse> deleteBookmark({
    @Path('user_id') required String userId,
    @Path('bookmark_id') required String bookmarkId,
  });
}
