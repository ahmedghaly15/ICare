import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_data.dart';

abstract class SpeechTherapyRepo {
  Future<ApiResult<List<LevelOneTrainingData>>> getLevelOneTrainingData();
}
