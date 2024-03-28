import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_data.dart';

abstract class SpeechTherapyRemoteDatasource {
  Future<List<LevelOneTrainingData>> getLevelOneTrainingData();
}

class SpeechTherapyRemoteDatasourceImpl
    implements SpeechTherapyRemoteDatasource {
  final ApiService _apiService;

  const SpeechTherapyRemoteDatasourceImpl(this._apiService);

  @override
  Future<List<LevelOneTrainingData>> getLevelOneTrainingData() async {
    return await _apiService.getLevelOneTrainingData();
  }
}
