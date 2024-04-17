import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/generate_audio_path_random_id.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_params.dart';
import 'package:icare/src/features/speech_therapy/domain/usecases/mark.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_state.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

class LevelTrainingCubit extends Cubit<LevelTrainingState> {
  final MarkUseCase _markUseCase;

  LevelTrainingCubit(this._markUseCase)
      : super(const LevelTrainingState.initial()) {
    _initAttributes();
    _audioPlayer.onPlayerStateChanged.listen((event) {
      _convertIsPlaying();
    });
  }

  void _initAttributes() {
    _audioPlayer = AudioPlayer();
    _audioRecorder = AudioRecorder();
  }

  late final AudioPlayer _audioPlayer;
  bool isPlaying = false;
  late final AudioRecorder _audioRecorder;
  String? _audioPath;
  bool isRecording = false;

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

  void _mark(int id, int level) async {
    emit(const LevelTrainingState.markLoading());
    final result = await _markUseCase.call(MarkParams(
      userId: Helper.uId!,
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

  void recordAndMark(int id, int level, BuildContext context) async {
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
      _mark(id, level);
    }
    _convertIsRecording();
  }

  @override
  Future<void> close() {
    _audioPlayer.dispose();
    _audioRecorder.dispose();
    return super.close();
  }
}
