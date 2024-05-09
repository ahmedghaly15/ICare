import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/features/baby_cry_predictor/domain/usecases/baby_cry_predictor_add_new_class.dart';
import 'package:icare/src/features/baby_cry_predictor/domain/usecases/baby_cry_predictor_leave_feedback.dart';
import 'package:icare/src/features/baby_cry_predictor/domain/usecases/get_baby_cry_predictor_classes.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/baby_cry_predictor_feedback/bab_cry_predictor_feedback_state.dart';

class BabyCryPredictorFeedbackCubit
    extends Cubit<BabyCryPredictorFeedbackState> {
  final GetBabyCryPredictorClassesUseCase getBabyCryPredictorClassesUseCase;
  final BabyCryPredictorLeaveFeedbackUseCase
      babyCryPredictorLeaveFeedbackUseCase;
  final BabyCryPredictorAddNewClassUseCase babyCryPredictorAddNewClassUseCase;

  BabyCryPredictorFeedbackCubit({
    required this.getBabyCryPredictorClassesUseCase,
    required this.babyCryPredictorLeaveFeedbackUseCase,
    required this.babyCryPredictorAddNewClassUseCase,
  }) : super(const BabyCryPredictorFeedbackState.initial()) {
    _initAttributes();
  }

  void _initAttributes() {
    newClassTextEditingController = TextEditingController();
    _audioPlayer = AudioPlayer();
  }

  late final TextEditingController newClassTextEditingController;
  late final AudioPlayer _audioPlayer;
  bool isPlaying = false;

  void covertIsPlaying() {
    isPlaying = !isPlaying;
    emit(BabyCryPredictorFeedbackState.convertIsPlayingBool(isPlaying));
  }

  void getBabyCryPredictorClasses() async {
    emit(const BabyCryPredictorFeedbackState
        .getBabyCryPredictorClassesLoading());
    final result =
        await getBabyCryPredictorClassesUseCase.call(const NoParams());
    result.when(
      success: (classes) => emit(
          BabyCryPredictorFeedbackState.getBabyCryPredictorClassesSuccess(
              classes)),
      error: (error) => emit(
        BabyCryPredictorFeedbackState.getBabyCryPredictorClassesError(
            error.apiErrorModel.error ?? ''),
      ),
    );
  }

  void babyCryPredictorAddNewClass() async {
    emit(const BabyCryPredictorFeedbackState.addNewClassLoading());
    final result = await babyCryPredictorAddNewClassUseCase(
        newClassTextEditingController.text.trim());
    result.when(
      success: (success) =>
          emit(BabyCryPredictorFeedbackState.addNewClassSuccess(success)),
      error: (error) => emit(
        BabyCryPredictorFeedbackState.addNewClassError(
            error.apiErrorModel.error ?? ''),
      ),
    );
  }

  void babyCryPredictorLeaveFeedback() async {
    emit(const BabyCryPredictorFeedbackState.leaveFeedbackLoading());
    final result = await babyCryPredictorLeaveFeedbackUseCase(
        newClassTextEditingController.text.trim());
    result.when(
      success: (success) =>
          emit(BabyCryPredictorFeedbackState.leaveFeedbackSuccess(success)),
      error: (error) => emit(
        BabyCryPredictorFeedbackState.leaveFeedbackError(
            error.apiErrorModel.error ?? ''),
      ),
    );
  }

  @override
  Future<void> close() {
    _disposeAttributes();
    return super.close();
  }

  void _disposeAttributes() {
    _audioPlayer.dispose();
    newClassTextEditingController.dispose();
  }
}
