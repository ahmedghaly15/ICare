import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:icare/src/features/speech_therapy/data/datasources/speech_therapy_remote_datasource.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_exam_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_data.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_level_one_params.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_level_one_response.dart';
import 'package:icare/src/features/speech_therapy/domain/repositories/speech_therapy_repo.dart';

class SpeechTherapyRepoImpl implements SpeechTherapyRepo {
  final SpeechTherapyRemoteDatasource _speechTherapyRemoteDatasource;

  const SpeechTherapyRepoImpl(this._speechTherapyRemoteDatasource);

  @override
  Future<ApiResult<List<LevelOneTrainingData>>> getLevelOneTrainingData() {
    return executeAndHandleErrors<List<LevelOneTrainingData>>(
      () async =>
          await _speechTherapyRemoteDatasource.getLevelOneTrainingData(),
    );
  }

  @override
  Future<ApiResult<List<LevelOneExamResponse>>> getLevelOneExam(
    int numOfCompletedSublevels,
  ) {
    return executeAndHandleErrors<List<LevelOneExamResponse>>(
      () async => await _speechTherapyRemoteDatasource
          .getLevelOneExam(numOfCompletedSublevels),
    );
  }

  @override
  Future<ApiResult<MarkLevelOneResponse>> markLevelOneExam(
    MarkLevelOneParams params,
  ) {
    return executeAndHandleErrors<MarkLevelOneResponse>(
      () async => await _speechTherapyRemoteDatasource.markLevelOneExam(params),
    );
  }
}
