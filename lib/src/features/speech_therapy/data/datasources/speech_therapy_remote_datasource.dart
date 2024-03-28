import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_exam_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_data.dart';

abstract class SpeechTherapyRemoteDatasource {
  Future<List<LevelOneTrainingData>> getLevelOneTrainingData();
  Future<List<LevelOneExamResponse>> getLevelOneExam(
      int numOfCompletedSublevels);
}

class SpeechTherapyRemoteDatasourceImpl
    implements SpeechTherapyRemoteDatasource {
  final ApiService _apiService;

  const SpeechTherapyRemoteDatasourceImpl(this._apiService);

  @override
  Future<List<LevelOneTrainingData>> getLevelOneTrainingData() async {
    return await _apiService.getLevelOneTrainingData();
  }

  @override
  Future<List<LevelOneExamResponse>> getLevelOneExam(
    int numOfCompletedSublevels,
  ) async {
    return await _apiService.getLevelOneExam(numOfCompletedSublevels);
  }
}
