import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/features/speech_therapy/domain/usecases/get_level_one_training_data.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubit/speech_therapy_state.dart';

class SpeechTherapyCubit extends Cubit<SpeechTherapyState> {
  final GetLevelOneTrainingDataUseCase getLevelOneTrainingDataUseCase;

  SpeechTherapyCubit({
    required this.getLevelOneTrainingDataUseCase,
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
}
