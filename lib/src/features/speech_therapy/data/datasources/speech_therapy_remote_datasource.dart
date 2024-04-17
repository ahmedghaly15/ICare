import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_params.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_response.dart';

abstract class SpeechTherapyRemoteDatasource {
  Future<List<LevelOneTrainingResponse>> getLevelOneTrainingData(String userId);
  Future<MarkResponse> markLevelOneExam(MarkParams params);
}

class SpeechTherapyRemoteDatasourceImpl
    implements SpeechTherapyRemoteDatasource {
  final ApiService _apiService;

  const SpeechTherapyRemoteDatasourceImpl(this._apiService);

  @override
  Future<List<LevelOneTrainingResponse>> getLevelOneTrainingData(
    String userId,
  ) async {
    return await _apiService.getLevelOneTrainingData(userId);
  }

  @override
  Future<MarkResponse> markLevelOneExam(
    MarkParams params,
  ) async {
    return await _apiService.mark(
      userId: params.userId,
      id: params.id,
      level: params.level,
      audioFile: params.audioFile,
    );
  }
}
