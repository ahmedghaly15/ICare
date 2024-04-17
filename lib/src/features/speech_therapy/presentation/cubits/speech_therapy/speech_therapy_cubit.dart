import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/features/speech_therapy/data/models/score_params.dart';
import 'package:icare/src/features/speech_therapy/domain/usecases/get_level_one_training_data.dart';
import 'package:icare/src/features/speech_therapy/domain/usecases/score.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_state.dart';

class SpeechTherapyCubit extends Cubit<SpeechTherapyState> {
  final GetLevelOneTrainingDataUseCase _getLevelOneTrainingDataUseCase;
  final ScoreUseCase _scoreUseCase;

  SpeechTherapyCubit(
    this._getLevelOneTrainingDataUseCase,
    this._scoreUseCase,
  ) : super(const SpeechTherapyState.initial());

  void getLevelOneTrainingData() async {
    emit(const SpeechTherapyState.getLevelOneTrainingDataLoading());
    final result = await _getLevelOneTrainingDataUseCase.call(Helper.uId!);
    result.when(
      success: (data) =>
          emit(SpeechTherapyState.getLevelOneTrainingDataSuccess(data)),
      error: (error) => emit(
        SpeechTherapyState.getLevelOneTrainingDataError(
            error.apiErrorModel.error ?? ''),
      ),
    );
  }

  void getScore(int level) async {
    emit(const SpeechTherapyState.getScoreLoading());
    final result = await _scoreUseCase.call(
      ScoreParams(userId: Helper.uId!, level: level),
    );
    result.when(
      success: (data) => emit(SpeechTherapyState.getScoreSuccess(data)),
      error: (error) => emit(
          SpeechTherapyState.getScoreError(error.apiErrorModel.error ?? '')),
    );
  }
}
