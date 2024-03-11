import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:record/record.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';
import 'package:icare/src/features/cry_translator/presentation/cubit/cry_translator_state.dart';

class CryTranslatorCubit extends Cubit<CryTranslatorState> {
  CryTranslatorCubit() : super(const CryTranslatorState.initial()) {
    isRecording = false;
    audioRecorder = AudioRecorder();
    audioPlayer = AudioPlayer();
  }

  late bool isRecording;
  late CountdownTimerController countDownController;

  late AudioRecorder audioRecorder;
  late AudioPlayer audioPlayer;

  void convertIsRecording() {
    isRecording = !isRecording;
    emit(CryTranslatorState.convertIsRecording(isRecording));
  }

  void startTimer() {
    final endTime =
        DateTime.now().millisecondsSinceEpoch + 1000 * 10; // 10 seconds
    countDownController =
        CountdownTimerController(endTime: endTime, onEnd: onTimerEnd);
    countDownController.start();
  }

  void onTimerEnd() {
    convertIsRecording();
    stopRecording();
  }

  String? audioPath;

  String _generateRandomId() {
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    final random = Random();
    return List.generate(
      10,
      (index) => chars[random.nextInt(chars.length)],
      growable: false,
    ).join();
  }

  Future<void> startRecording() async {
    try {
      if (await audioRecorder.hasPermission()) {
        debugPrint(
            '=========>>>>>>>>>>>RECORDING!!!!!!!!!!!!!!!<<<<<<===========');

        String filePath = await getApplicationDocumentsDirectory()
            .then((value) => '${value.path}/${_generateRandomId()}.wav');

        await audioRecorder.start(const RecordConfig(), path: filePath);
      }
    } catch (e) {
      debugPrint('ERROR WHILE RECORDING: $e');
    }
  }

  Future<void> stopRecording() async {
    try {
      String? path = await audioRecorder.stop();
      audioPath = path!;
      emit(CryTranslatorState.assignAudioPathVal(audioPath!));
      debugPrint('=========>>>>>>>>>>> PATH: $audioPath <<<<<<===========');
    } catch (e) {
      debugPrint('ERROR WHILE STOP RECORDING: $e');
    }
  }

  Future<void> playAudio() async {
    if (audioPath != null) {
      debugPrint('=========>>>>>>>>>>> AUDIO IS PLAYING <<<<<<===========');
      Source urlSource = UrlSource(audioPath!);
      await audioPlayer.play(urlSource);
    } else {
      debugPrint('Error: audioPath is null');
    }
  }

  @override
  Future<void> close() {
    audioPlayer.dispose();
    audioRecorder.dispose();
    return super.close();
  }
}
