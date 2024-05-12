import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_class.dart';
import 'package:icare/src/features/baby_cry_predictor/domain/usecases/baby_cry_predictor_leave_feedback.dart';
import 'package:icare/src/features/baby_cry_predictor/domain/usecases/get_baby_cry_predictor_classes.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/baby_cry_predictor_feedback/bab_cry_predictor_feedback_state.dart';

class BabyCryPredictorFeedbackCubit
    extends Cubit<BabyCryPredictorFeedbackState> {
  final GetBabyCryPredictorClassesUseCase getBabyCryPredictorClassesUseCase;
  final BabyCryPredictorLeaveFeedbackUseCase
      babyCryPredictorLeaveFeedbackUseCase;

  BabyCryPredictorFeedbackCubit({
    required this.getBabyCryPredictorClassesUseCase,
    required this.babyCryPredictorLeaveFeedbackUseCase,
  }) : super(const BabyCryPredictorFeedbackState.initial()) {
    _initAttributes();
    _listenOnPlayerStates();
  }

  void _listenOnPlayerStates() {
    _audioPlayer.onPlayerStateChanged.listen((playerState) {
      if (playerState == PlayerState.completed ||
          playerState == PlayerState.stopped) {
        _makePlayingIndexNull();
      }
    });
  }

  void _makePlayingIndexNull() {
    playingIndex = null;
    emit(BabyCryPredictorFeedbackState.updatePlayingIndex(playingIndex));
  }

  void _initAttributes() {
    _audioPlayer = AudioPlayer();
  }

  late final AudioPlayer _audioPlayer;

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

  BabyCryPredictorClass? selectedClass;

  void updateSelectedClass(BabyCryPredictorClass selectedClass) {
    if (this.selectedClass == selectedClass) {
      _makeSelectedClassNull();
    } else {
      _renewSelectedClass(selectedClass);
    }
    emit(BabyCryPredictorFeedbackState.updateSelectedClass(this.selectedClass));
  }

  void _makeSelectedClassNull() {
    selectedClass = null;
  }

  void emitSelectedClassNull() {
    selectedClass = null;
    emit(BabyCryPredictorFeedbackState.updateSelectedClass(selectedClass));
  }

  void _renewSelectedClass(BabyCryPredictorClass selectedClass) {
    this.selectedClass = selectedClass;
  }

  void babyCryPredictorLeaveFeedback() async {
    emit(const BabyCryPredictorFeedbackState.leaveFeedbackLoading());
    final result = await babyCryPredictorLeaveFeedbackUseCase(
      selectedClass!.className,
    );
    result.when(
      success: (success) =>
          emit(BabyCryPredictorFeedbackState.leaveFeedbackSuccess(success)),
      error: (error) => emit(
        BabyCryPredictorFeedbackState.leaveFeedbackError(
            error.apiErrorModel.error ?? ''),
      ),
    );
  }

  int? playingIndex;

  void playPauseAudio(String url, int index) async {
    if (playingIndex != null && playingIndex == index) {
      await _audioPlayer.pause();
    } else {
      await _audioPlayer.play(UrlSource(url));
    }
    _updatePlayingIndex(index);
  }

  void _updatePlayingIndex(int index) {
    if (playingIndex != null && playingIndex == index) {
      playingIndex = null;
    } else {
      playingIndex = index;
    }
    emit(BabyCryPredictorFeedbackState.updatePlayingIndex(playingIndex));
  }

  @override
  Future<void> close() {
    _disposeAttributes();
    return super.close();
  }

  void _disposeAttributes() {
    _audioPlayer.dispose();
  }
}
