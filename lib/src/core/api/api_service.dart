import 'dart:io';

import 'package:dio/dio.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_class.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/last_result_response.dart';
import 'package:icare/src/features/notifications/data/models/notification_request.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_response.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_params.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_response.dart';
import 'package:icare/src/features/icare_bot/data/models/delete_bookmark_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_marking_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_two_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/score_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/speech_therapy_level.dart';
import 'package:icare/src/features/tips/data/models/get_random_tip_response.dart';
import 'package:retrofit/http.dart' as retrofit;
import 'package:retrofit/retrofit.dart';

import 'package:icare/src/core/api/end_points.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/features/disease_details/data/models/disease_details.dart';
import 'package:icare/src/features/medical/data/models/get_medical_info_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: EndPoints.databaseBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

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

  @POST('${EndPoints.babyCryPredictor}{user_id}')
  @MultiPart()
  Future<BabyCryPredictorResponse> babyCryPredictor({
    @Part(name: 'baby_cry_audio') required File babyCryAudio,
    @Path('user_id') required String userId,
  });

  @GET(EndPoints.getRandomTip)
  Future<GetRandomTipResponse> getRandomTip();

  @POST(EndPoints.bookmarkICareBotMessage)
  Future<BookmarkICareBotMessageResponse> bookmarkICareBotMessage(
    @Body() BookmarkICareBotMessageParams params,
  );

  @GET('${EndPoints.retrieveBookmarks}{user_id}')
  Future<List<BookmarkICareBotMessageResponse>> retrieveICareBotBookmarks(
    @Path('user_id') String userId,
  );

  @DELETE('${EndPoints.deleteBookmark}{user_id}/{bookmark_id}/')
  Future<DeleteBookmarkResponse> deleteBookmark({
    @Path('user_id') required String userId,
    @Path('bookmark_id') required String bookmarkId,
  });

  @GET(EndPoints.speechTherapyLevels)
  Future<List<SpeechTherapyLevel>> getSpeechTherapyLevels();

  @GET('${EndPoints.levelOneTraining}{user_id}')
  Future<List<LevelOneTrainingResponse>> getLevelOneTrainingData(
    @Path('user_id') String userId,
  );

  @POST(EndPoints.marking)
  @MultiPart()
  Future<MarkResponse> mark({
    @Query('user_id') required String userId,
    @Query('id') required int id,
    @Query('level') required int level,
    @Part(name: 'audio_file') required File audioFile,
  });

  @GET(EndPoints.score)
  Future<ScoreResponse> score(
    @Query('user_id') String userId,
    @Query('level') int level,
  );

  @GET('${EndPoints.levelTwoTraining}{user_id}')
  Future<List<LevelTwoTrainingResponse>> getLevelTwoTrainingData(
    @Path('user_id') String userId,
  );

  @GET(EndPoints.advancedLevelTraining)
  Future<List<AdvancedLevelTrainingResponse>> getAdvancedLevelTrainingData();

  @POST(EndPoints.advancedLevelMarking)
  @MultiPart()
  Future<AdvancedLevelMarkingResponse> advancedLevelMarking({
    @Query('user_id') required String userId,
    @Query('id') required int id,
    @Query('ayah_num') required int ayahNum,
    @Part(name: 'audio_file') required File audioFile,
  });

  @POST(EndPoints.sendNotification)
  @retrofit.Headers({
    "Content-Type": "application/json",
    "Authorization":
        "key=AAAAQf84HOk:APA91bFKOKY_KNlsW6QaMaGYDxqGU1L2cKWnXADsCZyStYwPwwd2zvezFC_2ps-g7TLZnAetFx_OxeCJQMqX6k4d7P8atV4O1doYCsQmQWkZnkwVeC73wEf3FSkor3GEpBnkTN3mnnzN",
  })
  Future<void> sendNotification(@Body() NotificationRequest params);

  @GET(EndPoints.babyCryPredictorAbout)
  Future<String> getBabyCryPredictorAbout();

  @GET(EndPoints.babyCryPredictorClasses)
  Future<List<BabyCryPredictorClass>> getBabyCryPredictorClasses();

  @GET('${EndPoints.babyCryPredictorLastResult}{user_id}')
  Future<LastResultResponse> getBabyCryPredictorLastResult(
    @Path('user_id') String userId,
  );

  @POST('${EndPoints.babyCryPredictorAddNewClass}{class_name}')
  Future<String> babyCryPredictorAddNewClass(
    @Path('class_name') String className,
  );

  @POST('${EndPoints.babyCryPredictorUploadMissClassifying}{class_name}')
  @MultiPart()
  Future<String> babyCryPredictorUploadMissClassifying({
    @Part(name: 'file') required File audioFile,
    @Path('class_name') required String className,
  });
}
