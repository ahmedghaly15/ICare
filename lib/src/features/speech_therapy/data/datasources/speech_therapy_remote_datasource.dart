import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_level_one_params.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_response.dart';

abstract class SpeechTherapyRemoteDatasource {
  Future<List<LevelOneTrainingResponse>> getLevelOneTrainingData();
  Future<MarkResponse> markLevelOneExam(MarkLevelOneParams params);
}

class SpeechTherapyRemoteDatasourceImpl
    implements SpeechTherapyRemoteDatasource {
  final ApiService _apiService;

  const SpeechTherapyRemoteDatasourceImpl(this._apiService);

  @override
  Future<List<LevelOneTrainingResponse>> getLevelOneTrainingData() async {
    return await _apiService.getLevelOneTrainingData();
  }

  @override
  Future<MarkResponse> markLevelOneExam(
    MarkLevelOneParams params,
  ) async {
    return await _apiService.markLevelOneExam(params.id, params.audioFile);
  }
}
