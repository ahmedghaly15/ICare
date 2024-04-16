import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_level_one_params.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_response.dart';

abstract class SpeechTherapyRepo {
  Future<ApiResult<List<LevelOneTrainingResponse>>> getLevelOneTrainingData(
      String userId);

  Future<ApiResult<MarkResponse>> markLevelOneExam(
    MarkLevelOneParams params,
  );
}
