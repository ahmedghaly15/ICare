import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:icare/src/features/speech_therapy/data/datasources/speech_therapy_remote_datasource.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_level_one_params.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_response.dart';
import 'package:icare/src/features/speech_therapy/domain/repositories/speech_therapy_repo.dart';

class SpeechTherapyRepoImpl implements SpeechTherapyRepo {
  final SpeechTherapyRemoteDatasource _speechTherapyRemoteDatasource;

  const SpeechTherapyRepoImpl(this._speechTherapyRemoteDatasource);

  @override
  Future<ApiResult<List<LevelOneTrainingResponse>>> getLevelOneTrainingData(
      String userId) {
    return executeAndHandleErrors<List<LevelOneTrainingResponse>>(
      () async =>
          await _speechTherapyRemoteDatasource.getLevelOneTrainingData(userId),
    );
  }

  @override
  Future<ApiResult<MarkResponse>> markLevelOneExam(
    MarkLevelOneParams params,
  ) {
    return executeAndHandleErrors<MarkResponse>(
      () async => await _speechTherapyRemoteDatasource.markLevelOneExam(params),
    );
  }
}
