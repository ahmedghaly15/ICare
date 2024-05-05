import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/generate_audio_path_random_id.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/baby_cry_predictor/domain/usecases/baby_cry_predictor.dart';
import 'package:icare/src/features/baby_cry_predictor/domain/usecases/get_baby_cry_predictor_about.dart';
import 'package:icare/src/features/baby_cry_predictor/domain/usecases/get_baby_cry_predictor_classes.dart';
import 'package:record/record.dart';
import 'package:path_provider/path_provider.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubit/baby_cry_predictor_state.dart';

class BabyCryPredictorCubit extends Cubit<BabyCryPredictorState> {
  final BabyCryPredictorUseCase babyCryPredictorUseCase;
  final GetBabyCryPredictorAboutUseCase getBabyCryPredictorAboutUseCase;
  final GetBabyCryPredictorClassesUseCase getBabyCryPredictorClassesUseCase;

  BabyCryPredictorCubit({
    required this.babyCryPredictorUseCase,
    required this.getBabyCryPredictorAboutUseCase,
    required this.getBabyCryPredictorClassesUseCase,
  }) : super(const BabyCryPredictorState.initial()) {
    isRecording = false;
    _audioRecorder = AudioRecorder();
  }

  late bool isRecording;
  late CountdownTimerController countDownController;
  late final AudioRecorder _audioRecorder;
  String? _audioPath;

  void emitInitialState() {
    emit(const BabyCryPredictorState.initial());
  }

  void _convertIsRecording() {
    isRecording = !isRecording;
    emit(BabyCryPredictorState.convertIsRecording(isRecording));
  }

  void _startTimer() {
    final endTime =
        DateTime.now().millisecondsSinceEpoch + 1000 * 10; // 10 seconds
    countDownController =
        CountdownTimerController(endTime: endTime, onEnd: onTimerEnd);
    countDownController.start();
  }

  void onTimerEnd() async {
    _convertIsRecording();
    await _stopRecording();
    _babyCryPredictor();
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
      emit(BabyCryPredictorState.assignAudioPathVal(_audioPath!));
      debugPrint('=========>>>>>> PATH: $_audioPath <<<<<<===========');
    } catch (e) {
      debugPrint('ERROR WHILE STOP RECORDING: $e');
    }
  }

  void _babyCryPredictor() async {
    emit(const BabyCryPredictorState.loading());
    final result = await babyCryPredictorUseCase.call(File(_audioPath!));
    result.when(
      success: (data) {
        emit(BabyCryPredictorState.success(data));
        _audioPath = null;
        emit(BabyCryPredictorState.assignAudioPathVal(_audioPath));
      },
      error: (error) => emit(
        BabyCryPredictorState.error(error.apiErrorModel.error ?? ''),
      ),
    );
  }

  void handleBabyCryPrediction(BuildContext context) async {
    if (isRecording == false) {
      final status = await _audioRecorder.hasPermission();

      if (status) {
        _startTimer();
        // ignore: use_build_context_synchronously
        _startRecording(context);
        _convertIsRecording();
      } else {
        ShowICareDialog.show(
          // ignore: use_build_context_synchronously
          context: context,
          state: ICareDialogStates.warning,
          message: AppStrings.microphonePermissionDenied,
        );
      }
    } else {
      countDownController.dispose();
      await _stopRecording();
      _babyCryPredictor();
      _convertIsRecording();
    }
  }

  void getBabyCryPredictorAbout() async {
    final result = await getBabyCryPredictorAboutUseCase.call(const NoParams());
    result.when(
      success: (data) => emit(BabyCryPredictorState.getAboutSuccess(data)),
      error: (error) => emit(
        BabyCryPredictorState.getAboutError(error.apiErrorModel.error ?? ''),
      ),
    );
  }

  void getBabyCryPredictorClasses() async {
    emit(const BabyCryPredictorState.getBabyCryPredictorClassesLoading());
    final result =
        await getBabyCryPredictorClassesUseCase.call(const NoParams());
    result.when(
      success: (data) =>
          emit(BabyCryPredictorState.getBabyCryPredictorClassesSuccess(data)),
      error: (error) => emit(
        BabyCryPredictorState.getBabyCryPredictorClassesError(
            error.apiErrorModel.error ?? ''),
      ),
    );
  }

  @override
  Future<void> close() {
    _audioRecorder.dispose();
    return super.close();
  }
}
