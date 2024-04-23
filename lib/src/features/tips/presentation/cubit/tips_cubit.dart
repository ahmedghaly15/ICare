import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/tips/data/models/get_random_tip_response.dart';
import 'package:icare/src/features/tips/domain/usecases/get_random_tip.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_state.dart';

class TipsCubit extends Cubit<TipsState> {
  final GetRandomTipUseCase _getRandomTipUseCase;

  TipsCubit(this._getRandomTipUseCase) : super(const TipsState.initial()) {
    _showOrNotShowTipDialogTimer();
    Future.wait([_getCachedIsDone()]);
  }

  void _showOrNotShowTipDialogTimer() {
    _timer = Timer.periodic(
      const Duration(hours: 24),
      (Timer t) async {
        await getIt.get<CacheHelper>().removeData(key: AppStrings.cachedIsDone);
      },
    );
  }

  late final Timer _timer;
  GetRandomTipResponse? randomTip;

  void getRandomTip() async {
    emit(const TipsState.getRandomTipLoading());
    final response = await _getRandomTipUseCase.call(const NoParams());
    response.when(
      success: (data) {
        randomTip = data;
        emit(TipsState.getRandomTipSuccess(data));
      },
      error: (error) => emit(
        TipsState.getRandomTipError(error.apiErrorModel.error ?? ''),
      ),
    );
  }

  bool isRandomTipRead = false;
  void convertIsRandomTipRead() {
    isRandomTipRead = !isRandomTipRead;
    emit(TipsState.convertIsRandomTipRead(isRandomTipRead));
  }

  bool isDone = false;
  void _convertIsDone() {
    isDone = !isDone;
    emit(TipsState.convertIsRandomTipRead(isDone));
  }

  Future<void> _cacheIsDone() async {
    await getIt.get<CacheHelper>().saveData(
          key: '${AppStrings.cachedIsDone}${Helper.uId}',
          value: isDone,
        );
  }

  Future<void> _getCachedIsDone() async {
    isDone = (getIt
            .get<CacheHelper>()
            .getBoolData(key: '${AppStrings.cachedIsDone}${Helper.uId}')) ??
        false;
    emit(TipsState.convertIsRandomTipRead(isDone));
  }

  void emitRandomTipDialogIsClosed() async {
    _convertIsDone();
    await _cacheIsDone();
    emit(const TipsState.randomTipDialogIsClosed());
  }

  void handleTipsState(TipsState<dynamic> state) {
    state.whenOrNull(
      randomTipDialogIsClosed: () {
        convertIsRandomTipRead();
      },
    );
  }

  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }
}
