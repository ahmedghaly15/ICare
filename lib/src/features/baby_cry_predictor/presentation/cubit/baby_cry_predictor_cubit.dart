import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/generate_audio_path_random_id.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/last_result_response.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/upload_miss_classifying_params.dart';
import 'package:icare/src/features/baby_cry_predictor/domain/usecases/baby_cry_predictor.dart';
import 'package:icare/src/features/baby_cry_predictor/domain/usecases/baby_cry_predictor_add_new_class.dart';
import 'package:icare/src/features/baby_cry_predictor/domain/usecases/baby_cry_predictor_upload_miss_classifying.dart';
import 'package:icare/src/features/baby_cry_predictor/domain/usecases/get_baby_cry_predictor_about.dart';
import 'package:icare/src/features/baby_cry_predictor/domain/usecases/get_baby_cry_predictor_classes.dart';
import 'package:icare/src/features/baby_cry_predictor/domain/usecases/get_baby_cry_predictor_last_result.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubit/baby_cry_predictor_state.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/last_result_dialog.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/notifying_user_about_enhancing_dialog.dart';

class BabyCryPredictorCubit extends Cubit<BabyCryPredictorState> {
  final BabyCryPredictorUseCase babyCryPredictorUseCase;
  final GetBabyCryPredictorAboutUseCase getBabyCryPredictorAboutUseCase;
  final GetBabyCryPredictorClassesUseCase getBabyCryPredictorClassesUseCase;
  final GetBabyCryPredictorLastResultUseCase
      getBabyCryPredictorLastResultUseCase;
  final BabyCryPredictorAddNewClassUseCase babyCryPredictorAddNewClassUseCase;
  final BabyCryPredictorUploadMissClassifyingUseCase
      babyCryPredictorUploadMissClassifyingUseCase;

  BabyCryPredictorCubit({
    required this.babyCryPredictorUseCase,
    required this.getBabyCryPredictorAboutUseCase,
    required this.getBabyCryPredictorClassesUseCase,
    required this.getBabyCryPredictorLastResultUseCase,
    required this.babyCryPredictorAddNewClassUseCase,
    required this.babyCryPredictorUploadMissClassifyingUseCase,
  }) : super(const BabyCryPredictorState.initial()) {
    _initAttributes();
  }

  void _initAttributes() {
    isRecording = false;
    _audioRecorder = AudioRecorder();
    newClassTextEditingController = TextEditingController();
  }

  late bool isRecording;
  late CountdownTimerController countDownController;
  late final TextEditingController newClassTextEditingController;
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
      success: (success) =>
          emit(BabyCryPredictorState.getAboutSuccess(success)),
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
      success: (classes) => emit(
          BabyCryPredictorState.getBabyCryPredictorClassesSuccess(classes)),
      error: (error) => emit(
        BabyCryPredictorState.getBabyCryPredictorClassesError(
            error.apiErrorModel.error ?? ''),
      ),
    );
  }

  void getBabyCryPredictorLastResult(BuildContext context) async {
    emit(const BabyCryPredictorState.getBabyCryPredictorLastResultLoading());
    final result =
        await getBabyCryPredictorLastResultUseCase.call(const NoParams());
    result.when(
      success: (lastResult) {
        emit(BabyCryPredictorState.getBabyCryPredictorLastResultSuccess(
            lastResult));
        _showLastResultDialog(context, lastResult);
      },
      error: (error) => emit(
        BabyCryPredictorState.getBabyCryPredictorLastResultError(
            error.apiErrorModel.error ?? ''),
      ),
    );
  }

  void _showLastResultDialog(
    BuildContext context,
    LastResultResponse lastResult,
  ) {
    if (lastResult.feeling != null && lastResult.photo != null) {
      // To build this dialog after the frame (UI) is built
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ShowICareDialog.show(
          context: context,
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 32.h),
          isBlurred: false,
          child: LastResultDialog(lastResult: lastResult),
        );
      });
    }
  }

  void babyCryPredictorAddNewClass() async {
    emit(const BabyCryPredictorState.addNewClassLoading());
    final result = await babyCryPredictorAddNewClassUseCase(
        newClassTextEditingController.text.trim());
    result.when(
      success: (success) =>
          emit(BabyCryPredictorState.addNewClassSuccess(success)),
      error: (error) => emit(
        BabyCryPredictorState.addNewClassError(error.apiErrorModel.error ?? ''),
      ),
    );
  }

  void uploadMissClassifying() async {
    emit(const BabyCryPredictorState.uploadMissClassifyingLoading());
    final result = await babyCryPredictorUploadMissClassifyingUseCase(
      UploadMissClassifyingParams(
        // TODO: use another audio file and controller if you need to
        audioFile: File(_audioPath!),
        className: newClassTextEditingController.text.trim(),
      ),
    );
    result.when(
      success: (success) =>
          emit(BabyCryPredictorState.uploadMissClassifyingSuccess(success)),
      error: (error) => emit(
        BabyCryPredictorState.uploadMissClassifyingError(
            error.apiErrorModel.error ?? ''),
      ),
    );
  }

  void showNotifyingUserAboutEnhancingDialog(BuildContext context) {
    bool? hasUserNotifiedAboutEnhancing =
        _getHasUserNotifiedAboutEnhancingBool();
    if (hasUserNotifiedAboutEnhancing == null) {
      // To build this dialog after the frame (UI) is built
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ShowICareDialog.show(
          context: context,
          child: BlocProvider<BabyCryPredictorCubit>(
            create: (_) => getIt.get<BabyCryPredictorCubit>(),
            child: const NotifyingUserAboutEnhancingDialog(),
          ),
        );
      });
    }
  }

  bool? _getHasUserNotifiedAboutEnhancingBool() {
    return getIt.get<CacheHelper>().getBoolData(
          key: '${AppStrings.hasUserNotifiedAboutEnhancing}${Helper.uId}',
        );
  }

  Future<bool> cacheHasUserNotifiedAboutEnhancing() async {
    return await getIt.get<CacheHelper>().saveData(
          key: '${AppStrings.hasUserNotifiedAboutEnhancing}${Helper.uId}',
          value: true,
        );
  }

  Future<bool> removeCachedLastResult() async {
    return await getIt.get<CacheHelper>().removeData(
          key: AppStrings.cachedBabyCryPredictorLastResult,
        );
  }

  @override
  Future<void> close() {
    _audioRecorder.dispose();
    return super.close();
  }
}
