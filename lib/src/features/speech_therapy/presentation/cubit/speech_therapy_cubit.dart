import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/features/speech_therapy/domain/usecases/get_level_one_exam.dart';
import 'package:icare/src/features/speech_therapy/domain/usecases/get_level_one_training_data.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubit/speech_therapy_state.dart';

class SpeechTherapyCubit extends Cubit<SpeechTherapyState> {
  final GetLevelOneTrainingDataUseCase getLevelOneTrainingDataUseCase;
  final GetLevelOneExamUseCase getLevelOneExamUseCase;

  SpeechTherapyCubit({
    required this.getLevelOneTrainingDataUseCase,
    required this.getLevelOneExamUseCase,
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

  void getLevelOneExam(int numOfCompletedSublevels) async {
    emit(const SpeechTherapyState.getLevelOneExamLoading());
    final result = await getLevelOneExamUseCase.call(numOfCompletedSublevels);
    result.when(
      success: (data) => emit(SpeechTherapyState.getLevelOneExamSuccess(data)),
      error: (error) => emit(
        SpeechTherapyState.getLevelOneExamError(
          error.apiErrorModel.error ?? '',
        ),
      ),
    );
  }
}
