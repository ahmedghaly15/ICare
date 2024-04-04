import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_level_one_params.dart';
import 'package:icare/src/features/speech_therapy/domain/usecases/get_level_one_training_data.dart';
import 'package:icare/src/features/speech_therapy/domain/usecases/mark_level_one.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubit/speech_therapy_state.dart';

class SpeechTherapyCubit extends Cubit<SpeechTherapyState> {
  final GetLevelOneTrainingDataUseCase getLevelOneTrainingDataUseCase;
  final MarkLevelOneUseCase markLevelOneUseCase;

  SpeechTherapyCubit({
    required this.getLevelOneTrainingDataUseCase,
    required this.markLevelOneUseCase,
  }) : super(const SpeechTherapyState.initial());

  void getLevelOneTrainingData() async {
    emit(const SpeechTherapyState.getLevelOneTrainingDataLoading());
    final result = await getLevelOneTrainingDataUseCase.call(const NoParams());
    result.when(
      success: (data) =>
          emit(SpeechTherapyState.getLevelOneTrainingDataSuccess(data)),
      error: (error) => emit(
        SpeechTherapyState.getLevelOneTrainingDataError(
            error.apiErrorModel.error ?? ''),
      ),
    );
  }

  void markLevelOneExam(MarkLevelOneParams params) async {
    emit(const SpeechTherapyState.markLevelOneExamLoading());
    final result = await markLevelOneUseCase.call(params);
    result.when(
      success: (data) => emit(SpeechTherapyState.markLevelOneExamSuccess(data)),
      error: (error) => emit(
        SpeechTherapyState.markLevelOneExamError(
          error.apiErrorModel.error ?? '',
        ),
      ),
    );
  }
}
