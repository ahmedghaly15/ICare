import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_marking_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/score_params.dart';
import 'package:icare/src/features/speech_therapy/domain/usecases/get_advanced_level_training_data.dart';
import 'package:icare/src/features/speech_therapy/domain/usecases/get_level_one_training_data.dart';
import 'package:icare/src/features/speech_therapy/domain/usecases/get_level_two_training_data.dart';
import 'package:icare/src/features/speech_therapy/domain/usecases/get_speech_therapy_levels.dart';
import 'package:icare/src/features/speech_therapy/domain/usecases/score.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_state.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/mark_success_dialog.dart';

class SpeechTherapyCubit extends Cubit<SpeechTherapyState> {
  final GetSpeechTherapyLevelsUseCase _getSpeechTherapyLevelsUseCase;
  final GetLevelOneTrainingDataUseCase _getLevelOneTrainingDataUseCase;
  final GetLevelTwoTrainingDataUseCase _getLevelTwoTrainingDataUseCase;
  final GetAdvancedLevelTrainingDataUseCase
      _getAdvancedLevelTrainingDataUseCase;
  final ScoreUseCase _scoreUseCase;

  SpeechTherapyCubit(
    this._getSpeechTherapyLevelsUseCase,
    this._getLevelOneTrainingDataUseCase,
    this._getLevelTwoTrainingDataUseCase,
    this._getAdvancedLevelTrainingDataUseCase,
    this._scoreUseCase,
  ) : super(const SpeechTherapyState.initial());

  void getSpeechTherapyLevels() async {
    emit(const SpeechTherapyState.getSpeechTherapyLevelsLoading());
    final result = await _getSpeechTherapyLevelsUseCase.call(const NoParams());
    result.when(
      success: (levels) =>
          emit(SpeechTherapyState.getSpeechTherapyLevelsSuccess(levels)),
      error: (error) => emit(
        SpeechTherapyState.getSpeechTherapyLevelsError(
            error.apiErrorModel.error ?? ''),
      ),
    );
  }

  void getLevelOneTrainingData() async {
    emit(const SpeechTherapyState.getLevelOneTrainingDataLoading());
    final result = await _getLevelOneTrainingDataUseCase.call(Helper.uId!);
    result.when(
      success: (data) =>
          emit(SpeechTherapyState.getLevelOneTrainingDataSuccess(data)),
      error: (error) => emit(
        SpeechTherapyState.getLevelOneTrainingDataError(
            error.apiErrorModel.error ?? ''),
      ),
    );
  }

  void getLevelTwoTrainingData() async {
    emit(const SpeechTherapyState.getLevelTwoTrainingDataLoading());
    final result = await _getLevelTwoTrainingDataUseCase.call(Helper.uId!);
    result.when(
      success: (data) =>
          emit(SpeechTherapyState.getLevelTwoTrainingDataSuccess(data)),
      error: (error) => emit(
        SpeechTherapyState.getLevelTwoTrainingDataError(
            error.apiErrorModel.error ?? ''),
      ),
    );
  }

  void getScore(int level) async {
    emit(const SpeechTherapyState.getScoreLoading());
    final result = await _scoreUseCase.call(
      ScoreParams(userId: Helper.uId!, level: level),
    );
    result.when(
      success: (data) => emit(SpeechTherapyState.getScoreSuccess(data)),
      error: (error) => emit(
          SpeechTherapyState.getScoreError(error.apiErrorModel.error ?? '')),
    );
  }

  void getAdvancedLevelTrainingData() async {
    emit(const SpeechTherapyState.getAdvancedLevelTrainingDataLoading());
    final result =
        await _getAdvancedLevelTrainingDataUseCase.call(const NoParams());
    result.when(
      success: (data) =>
          emit(SpeechTherapyState.getAdvancedLevelTrainingDataSuccess(data)),
      error: (error) => emit(
        SpeechTherapyState.getAdvancedLevelTrainingDataError(
            error.apiErrorModel.error ?? ''),
      ),
    );
  }

  Future<dynamic> _showMarkSuccessDialog({
    required BuildContext context,
    required String status,
    required String imageUrl,
  }) {
    return ShowICareDialog.show(
      context: context,
      padding: EdgeInsets.zero,
      child: MarkSuccessDialog(
        status: status,
        imageUrl: imageUrl,
      ),
    );
  }

  void handleLevelOneMarkSuccess(BuildContext context, MarkResponse data) {
    _showMarkSuccessDialog(
      context: context,
      status: data.status,
      imageUrl: data.imageUrl,
    );
    getIt
        .get<CacheHelper>()
        .removeData(key: AppStrings.cachedLevelOneTrainingData)
        .then((value) {
      if (value) {
        getLevelOneTrainingData();
      }
    });
    getIt
        .get<CacheHelper>()
        .removeData(key: '${AppStrings.cachedScoreData}level1')
        .then((value) {
      getScore(1);
    });
  }

  void handleLevelTwoMarkSuccess(BuildContext context, MarkResponse data) {
    _showMarkSuccessDialog(
      context: context,
      status: data.status,
      imageUrl: data.imageUrl,
    );
    getIt
        .get<CacheHelper>()
        .removeData(key: AppStrings.cachedLevelTwoTrainingData)
        .then((value) {
      if (value) {
        getLevelTwoTrainingData();
      }
    });
    getIt
        .get<CacheHelper>()
        .removeData(key: '${AppStrings.cachedScoreData}level2')
        .then((value) {
      getScore(2);
    });
  }

  void handleAdvancedLevelMarkSuccess(
    BuildContext context,
    AdvancedLevelMarkingResponse data,
  ) {
    _showMarkSuccessDialog(
      context: context,
      status: data.status,
      imageUrl: data.imageUrl,
    );
    getIt
        .get<CacheHelper>()
        .removeData(key: '${AppStrings.cachedScoreData}level3')
        .then((value) {
      getScore(3);
    });
  }
}
