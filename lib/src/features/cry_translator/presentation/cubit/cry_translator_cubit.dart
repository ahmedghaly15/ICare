import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:icare/src/features/cry_translator/presentation/cubit/cry_translator_state.dart';

class CryTranslatorCubit extends Cubit<CryTranslatorState> {
  CryTranslatorCubit() : super(const CryTranslatorState.initial()) {
    isRecording = false;
  }

  late bool isRecording;
  late CountdownTimerController countDownController;

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
  }
}
