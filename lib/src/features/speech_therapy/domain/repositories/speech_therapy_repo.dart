import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_marking_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_two_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_params.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/score_params.dart';
import 'package:icare/src/features/speech_therapy/data/models/score_response.dart';

abstract class SpeechTherapyRepo {
  Future<ApiResult<List<LevelOneTrainingResponse>>> getLevelOneTrainingData(
    String userId,
  );
  Future<ApiResult<MarkResponse>> mark(
    MarkParams params,
  );
  Future<ApiResult<ScoreResponse>> score(ScoreParams params);
  Future<ApiResult<List<LevelTwoTrainingResponse>>> getLevelTwoTrainingData(
    String userId,
  );
  Future<ApiResult<List<AdvancedLevelTrainingResponse>>>
      getAdvancedLevelTrainingData();
  Future<ApiResult<AdvancedLevelMarkingResponse>> advancedLevelMarking(
    MarkParams params,
  );
}
