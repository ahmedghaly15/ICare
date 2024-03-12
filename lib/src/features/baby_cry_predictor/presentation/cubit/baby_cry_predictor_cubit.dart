import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:icare/src/features/baby_cry_predictor/domain/usecases/baby_cry_predictor.dart';
import 'package:record/record.dart';
import 'package:path_provider/path_provider.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubit/baby_cry_predictor_state.dart';

class BabyCryPredictorCubit extends Cubit<BabyCryPredictorState> {
  final BabyCryPredictorUseCase _babyCryPredictorUseCase;

  BabyCryPredictorCubit(
    this._babyCryPredictorUseCase,
  ) : super(const BabyCryPredictorState.initial()) {
    isRecording = false;
    audioRecorder = AudioRecorder();
  }

  void babyCryPredictor() async {
    emit(const BabyCryPredictorState.loading());

    final result = await _babyCryPredictorUseCase.call(audioPath!);

    result.when(
      success: (data) => emit(BabyCryPredictorState.success(data)),
      error: (error) =>
          emit(BabyCryPredictorState.error(error.apiErrorModel.error ?? '')),
    );
  }

  late bool isRecording;
  late CountdownTimerController countDownController;

  late AudioRecorder audioRecorder;

  void convertIsRecording() {
    isRecording = !isRecording;
    emit(BabyCryPredictorState.convertIsRecording(isRecording));
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
      emit(BabyCryPredictorState.assignAudioPathVal(audioPath!));
      debugPrint('=========>>>>>>>>>>> PATH: $audioPath <<<<<<===========');
    } catch (e) {
      debugPrint('ERROR WHILE STOP RECORDING: $e');
    }
  }

  @override
  Future<void> close() {
    audioRecorder.dispose();
    return super.close();
  }
}
