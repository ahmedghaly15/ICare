import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/helpers/constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/generate_audio_path_random_id.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_params.dart';
import 'package:icare/src/features/speech_therapy/domain/usecases/advanced_level_marking.dart';
import 'package:icare/src/features/speech_therapy/domain/usecases/mark.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_state.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

class LevelTrainingCubit extends Cubit<LevelTrainingState> {
  final MarkUseCase _markUseCase;
  final AdvancedLevelMarkingUseCase _advancedLevelMarkingUseCase;

  LevelTrainingCubit(
    this._markUseCase,
    this._advancedLevelMarkingUseCase,
  ) : super(const LevelTrainingState.initial()) {
    _initAttributes();
    _audioPlayer.onPlayerStateChanged.listen((event) {
      _convertIsPlaying();
    });
  }

  void _initAttributes() {
    _audioPlayer = AudioPlayer();
    _audioRecorder = AudioRecorder();
    advancedLevelTrainingScrollController = ScrollController();
  }

  late final AudioPlayer _audioPlayer;
  bool isPlaying = false;
  late final AudioRecorder _audioRecorder;
  String? _audioPath;
  bool isRecording = false;
  late final ScrollController advancedLevelTrainingScrollController;

  void _convertIsPlaying() {
    isPlaying = !isPlaying;
    emit(LevelTrainingState.convertIsPlayingBool(isPlaying));
  }

  void _convertIsRecording() {
    isRecording = !isRecording;
    emit(LevelTrainingState.convertIsRecordingBool(isRecording));
  }

  void playPauseAudio(String url) async {
    if (isPlaying) {
      await _audioPlayer.pause();
    } else {
      await _audioPlayer.play(UrlSource(url));
    }
  }

  Future<void> _startRecording(BuildContext context) async {
    try {
      debugPrint(
          '=========>>>>>>>>>>> RECORDING!!!!!!!!!!!!!!! <<<<<<===========');
      String filePath = await getApplicationDocumentsDirectory()
          .then((value) => '${value.path}/${generateAudioPathRandomId()}.wav');
      await _audioRecorder.start(
        const RecordConfig(
          encoder: AudioEncoder.wav,
        ),
        path: filePath,
      );
    } catch (e) {
      debugPrint('ERROR WHILE RECORDING: $e');
    }
  }

  Future<void> _stopRecording() async {
    try {
      String? path = await _audioRecorder.stop();
      _audioPath = path!;
      emit(LevelTrainingState.assignAudioPathVal(_audioPath!));
      debugPrint('=========>>>>>> PATH: $_audioPath <<<<<<===========');
    } catch (e) {
      debugPrint('ERROR WHILE STOP RECORDING: $e');
    }
  }

  void _emitUserIsTryingNow() {
    emit(const LevelTrainingState.userIsTryingNow());
  }

  void emitInitial() {
    emit(const LevelTrainingState.initial());
  }

  void _mark({required int id, required int level}) async {
    emit(const LevelTrainingState.markLoading());
    final result = await _markUseCase.call(MarkParams(
      userId: Constants.uId!,
      audioFile: File(_audioPath!),
      id: id,
      level: level,
    ));
    result.when(
      success: (markResponse) {
        emit(LevelTrainingState.markSuccess(markResponse));
        _audioPath = null;
        emit(LevelTrainingState.assignAudioPathVal(_audioPath));
      },
      error: (error) =>
          emit(LevelTrainingState.markError(error.apiErrorModel.error ?? '')),
    );
  }

  void recordAndMark({
    required int id,
    required int level,
    required BuildContext context,
  }) async {
    if (isRecording == false) {
      final status = await _audioRecorder.hasPermission();
      if (status == true) {
        _emitUserIsTryingNow();
        // ignore: use_build_context_synchronously
        await _startRecording(context);
      } else {
        ShowICareDialog.show(
          // ignore: use_build_context_synchronously
          context: context,
          state: ICareDialogStates.warning,
          message: AppStrings.microphonePermissionDenied,
        );
      }
    } else {
      await _stopRecording();
      _mark(id: id, level: level);
    }
    _convertIsRecording();
  }

  void _advancedLevelMarking(int id) async {
    emit(const LevelTrainingState.advancedLevelMarkingLoading());
    final result = await _advancedLevelMarkingUseCase.call(
      MarkParams(
        userId: Constants.uId!,
        id: id,
        audioFile: File(_audioPath!),
        ayahNum: selectedAyah?.ayahNum,
      ),
    );
    result.when(
      success: (data) {
        emit(LevelTrainingState.advancedLevelMarkingSuccess(data));
        _audioPath = null;
        emit(LevelTrainingState.assignAudioPathVal(_audioPath));
      },
      error: (error) => emit(LevelTrainingState.advancedLevelMarkingError(
          error.apiErrorModel.error ?? '')),
    );
  }

  void recordAndMarkAdvancedLevel(int id, BuildContext context) async {
    if (isRecording == false) {
      final status = await _audioRecorder.hasPermission();
      if (status == true) {
        _emitUserIsTryingNow();
        // ignore: use_build_context_synchronously
        await _startRecording(context);
      } else {
        ShowICareDialog.show(
          // ignore: use_build_context_synchronously
          context: context,
          state: ICareDialogStates.warning,
          message: AppStrings.microphonePermissionDenied,
        );
      }
    } else {
      await _stopRecording();
      _advancedLevelMarking(id);
    }
    _convertIsRecording();
  }

  bool isAnAdvancedItemSelected = false;
  Ayah? selectedAyah;
  bool isScrolledToBottom = false;

  Future<void> _scrollToBottom() async {
    if (!isScrolledToBottom) {
      await advancedLevelTrainingScrollController.animateTo(
        advancedLevelTrainingScrollController.position.maxScrollExtent +
            SizeConfig.height * 0.12,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    }
  }

  void emitUpdateSelectedAyah() {
    emit(LevelTrainingState.updateSelectedAyah(selectedAyah!));
    isAnAdvancedItemSelected = false;
    emit(LevelTrainingState.convertIsAnAdvancedItemSelected(
        isAnAdvancedItemSelected));
  }

  void playAndPauseAdvancedLevel(Ayah ayah, BuildContext context) async {
    if (isPlaying) {
      await _audioPlayer.pause();
    } else {
      await _audioPlayer.play(UrlSource(ayah.ayahAudioUrl));
    }
  }

  void updateSelectedAyah(Ayah selectedAyah) async {
    if (this.selectedAyah == null) {
      _renewSelectedAyah(selectedAyah);
      _trueIsAdvancedItemSelected();
      await _scrollToBottomAndTrueIsScrolledToBottom();
    } else if (this.selectedAyah?.ayahAr != selectedAyah.ayahAr) {
      _renewSelectedAyah(selectedAyah);
      _trueIsAdvancedItemSelected();
      await _scrollToBottomAndTrueIsScrolledToBottom();
    } else {
      _nullSelectedAyah(selectedAyah);
      _falseIsAdvancedItemSelected();
      _falseIsScrolledToBottom();
    }
  }

  void _falseIsScrolledToBottom() {
    isScrolledToBottom = false;
    emit(
        LevelTrainingState.convertIsAnAdvancedItemSelected(isScrolledToBottom));
  }

  void _falseIsAdvancedItemSelected() {
    isAnAdvancedItemSelected = false;
    emit(LevelTrainingState.convertIsAnAdvancedItemSelected(
        isAnAdvancedItemSelected));
  }

  void _nullSelectedAyah(Ayah selectedAyah) {
    this.selectedAyah = null;
    emit(LevelTrainingState.updateSelectedAyah(selectedAyah));
  }

  Future<void> _scrollToBottomAndTrueIsScrolledToBottom() async {
    await _scrollToBottom();
    isScrolledToBottom = true;
    emit(
        LevelTrainingState.convertIsAnAdvancedItemSelected(isScrolledToBottom));
  }

  void _trueIsAdvancedItemSelected() {
    isAnAdvancedItemSelected = true;
    emit(LevelTrainingState.convertIsAnAdvancedItemSelected(
        isAnAdvancedItemSelected));
  }

  void _renewSelectedAyah(Ayah selectedAyah) {
    this.selectedAyah = selectedAyah;
    emit(LevelTrainingState.updateSelectedAyah(selectedAyah));
  }

  @override
  Future<void> close() {
    _disposeAttributes();
    return super.close();
  }

  void _disposeAttributes() {
    _audioPlayer.dispose();
    _audioRecorder.dispose();
    advancedLevelTrainingScrollController.dispose();
  }
}
