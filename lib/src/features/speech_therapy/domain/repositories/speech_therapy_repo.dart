import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_exam_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_data.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_level_one_params.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_level_one_response.dart';

abstract class SpeechTherapyRepo {
  Future<ApiResult<List<LevelOneTrainingData>>> getLevelOneTrainingData();
  Future<ApiResult<List<LevelOneExamResponse>>> getLevelOneExam(
    int numOfCompletedSublevels,
  );
  Future<ApiResult<MarkLevelOneResponse>> markLevelOneExam(
    MarkLevelOneParams params,
  );
}
