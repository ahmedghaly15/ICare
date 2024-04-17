import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/speech_therapy/data/models/score_params.dart';
import 'package:icare/src/features/speech_therapy/domain/usecases/score.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/score/score_state.dart';

class ScoreCubit extends Cubit<ScoreState> {
  final ScoreUseCase _getScoreUseCase;

  ScoreCubit(this._getScoreUseCase) : super(const ScoreState.initial());

  void getScore(ScoreParams params) async {
    emit(const ScoreState.getScoreLoading());
    final result = await _getScoreUseCase(params);
    result.when(
      success: (scoreResponse) =>
          emit(ScoreState.getScoreSuccess(scoreResponse)),
      error: (error) =>
          emit(ScoreState.getScoreError(error.apiErrorModel.error ?? '')),
    );
  }
}
