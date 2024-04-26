import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_marking_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_two_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_params.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/score_params.dart';
import 'package:icare/src/features/speech_therapy/data/models/score_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/speech_therapy_level.dart';

abstract class SpeechTherapyRemoteDatasource {
  Future<List<SpeechTherapyLevel>> getSpeechTherapyLevels();
  Future<List<LevelOneTrainingResponse>> getLevelOneTrainingData(String userId);
  Future<MarkResponse> mark(MarkParams params);
  Future<ScoreResponse> score(ScoreParams params);
  Future<List<LevelTwoTrainingResponse>> getLevelTwoTrainingData(String userId);
  Future<List<AdvancedLevelTrainingResponse>> getAdvancedLevelTrainingData();
  Future<AdvancedLevelMarkingResponse> advancedLevelMarking(MarkParams params);
}

class SpeechTherapyRemoteDatasourceImpl
    implements SpeechTherapyRemoteDatasource {
  final ApiService _apiService;

  const SpeechTherapyRemoteDatasourceImpl(this._apiService);

  @override
  Future<List<SpeechTherapyLevel>> getSpeechTherapyLevels() async {
    return await _apiService.getSpeechTherapyLevels();
  }

  @override
  Future<List<LevelOneTrainingResponse>> getLevelOneTrainingData(
    String userId,
  ) async {
    return await _apiService.getLevelOneTrainingData(userId);
  }

  @override
  Future<MarkResponse> mark(
    MarkParams params,
  ) async {
    return await _apiService.mark(
      userId: params.userId,
      id: params.id,
      level: params.level!,
      audioFile: params.audioFile,
    );
  }

  @override
  Future<ScoreResponse> score(ScoreParams params) async {
    return await _apiService.score(params.userId, params.level);
  }

  @override
  Future<List<LevelTwoTrainingResponse>> getLevelTwoTrainingData(
    String userId,
  ) async {
    return await _apiService.getLevelTwoTrainingData(userId);
  }

  @override
  Future<List<AdvancedLevelTrainingResponse>>
      getAdvancedLevelTrainingData() async {
    return await _apiService.getAdvancedLevelTrainingData();
  }

  @override
  Future<AdvancedLevelMarkingResponse> advancedLevelMarking(
    MarkParams params,
  ) async {
    return await _apiService.advancedLevelMarking(
      userId: params.userId,
      id: params.id,
      audioFile: params.audioFile,
      ayahNum: params.ayahNum!,
    );
  }
}
