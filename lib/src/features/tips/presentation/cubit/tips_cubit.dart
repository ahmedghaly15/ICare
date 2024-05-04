import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/tips/data/models/get_random_tip_response.dart';
import 'package:icare/src/features/tips/domain/usecases/get_random_tip.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_state.dart';

class TipsCubit extends Cubit<TipsState> {
  final GetRandomTipUseCase _getRandomTipUseCase;

  TipsCubit(this._getRandomTipUseCase) : super(const TipsState.initial()) {
    _initialization();
  }

  Future<void> _initialization() async {
    await _getCachedIsDone();
    await _showOrNotShowTipDialogTimer();
    _updateRandomTipDialogOpacity();
    _showRandomTipDialog();
  }

  Future<void> _showOrNotShowTipDialogTimer() async {
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
        emit(TipsState.getRandomTipSuccess(randomTip));
      },
      error: (error) => emit(
        TipsState.getRandomTipError(error.apiErrorModel.error ?? ''),
      ),
    );
  }

  // Handling Apple and web platforms handle permissions
  void requestNotificationsPermission(BuildContext context) async {
    NotificationSettings settings =
        await getIt.get<FirebaseMessaging>().requestPermission(
              alert: true,
              announcement: false,
              badge: true,
              carPlay: false,
              criticalAlert: false,
              provisional: false,
              sound: true,
            );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      debugPrint('************ User granted permission ***********');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      debugPrint('User granted provisional permission');
      ShowICareDialog.show(
        // ignore: use_build_context_synchronously
        context: context,
        anotherTitle: '',
        message:
            'The app is currently authorized to post non-interrupting user notifications.',
      );
    } else {
      debugPrint('User declined or has not accepted permission');
      ShowICareDialog.show(
        // ignore: use_build_context_synchronously
        context: context,
        anotherTitle: '',
        message: 'Permissions declined or has not been accepted.',
      );
    }
  }

  bool isRandomTipRead = false;
  void convertIsRandomTipRead() {
    isRandomTipRead = !isRandomTipRead;
    emit(TipsState.convertIsRandomTipRead(isRandomTipRead));
  }

  bool isDone = false;
  void _convertIsDone() {
    isDone = !isDone;
    emit(TipsState.convertBoolVal(isDone));
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
    emit(TipsState.convertBoolVal(isDone));
  }

  void emitRandomTipDialogIsClosed() async {
    _convertIsDone();
    await _cacheIsDone();
    _updateRandomTipDialogOpacity();
    _showRandomTipDialog();
    emit(const TipsState.randomTipDialogIsClosed());
  }

  double randomTipDialogOpacity = 1.0;
  bool isDialogShown = true;

  void _showRandomTipDialog() {
    if (isDone) {
      Future.delayed(const Duration(milliseconds: 500), () {
        isDialogShown = false;
        emit(TipsState.convertBoolVal(isDialogShown));
      });
    } else {
      isDialogShown = true;
    }
    emit(TipsState.convertBoolVal(isDialogShown));
  }

  void _updateRandomTipDialogOpacity() {
    if (isDone) {
      randomTipDialogOpacity = 0.0;
    } else {
      randomTipDialogOpacity = 1.0;
    }
    emit(TipsState.updateRandomTipDialogOpacity(randomTipDialogOpacity));
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
