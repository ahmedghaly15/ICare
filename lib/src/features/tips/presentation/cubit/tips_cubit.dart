import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/core/helpers/constants.dart';
import 'package:icare/src/core/services/local_notifications/local_notification.dart';
import 'package:icare/src/core/services/local_notifications/local_notifications_service.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/access_collections.dart';
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
    await _showOrNotShowTipDialogTimer();
    await _getSavedIsDone();
    _updateRandomTipDialogOpacity();
    _showRandomTipDialog();
  }

  Future<void> _showOrNotShowTipDialogTimer() async {
    _timer = Timer.periodic(
      const Duration(hours: 24),
      (Timer t) async {
        await _setIsDoneToFalse();
      },
    );
  }

  Future<void> _setIsDoneToFalse() async {
    await accessTipsCollection().doc(Constants.uId).update({
      AppStrings.cachedIsDone: false,
    });
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

  bool isRandomTipRead = false;
  void convertIsRandomTipRead() {
    isRandomTipRead = !isRandomTipRead;
    emit(TipsState.convertIsRandomTipRead(isRandomTipRead));
  }

  bool isDone = false;
  void _invertIsDone() {
    isDone = !isDone;
    emit(TipsState.convertBoolVal(isDone));
  }

  Future<void> _saveIsDone() async {
    return await accessTipsCollection().doc(Constants.uId).set({
      AppStrings.cachedIsDone: isDone,
    });
  }

  Future<void> _getSavedIsDone() async {
    final isDoneQuery = await accessTipsCollection().doc(Constants.uId).get();
    isDone = isDoneQuery.data()?[AppStrings.cachedIsDone] ?? false;
    debugPrint(
        '******* =>>>>>>>> IS DONE ${isDoneQuery.data()?[AppStrings.cachedIsDone]}');
    emit(TipsState.convertBoolVal(isDone));
  }

  void emitRandomTipDialogIsClosed() async {
    _invertIsDone();
    await _saveIsDone();
    _updateRandomTipDialogOpacity();
    _showRandomTipDialog();
    emit(const TipsState.randomTipDialogIsClosed());
  }

  double randomTipDialogOpacity = 1.0;
  bool isDialogShown = true;

  void _showRandomTipDialog() {
    if (isDone) {
      isDialogShown = false;
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

  void initializeNotificationListeners(BuildContext context) {
    _handleForegroundNotification();
    FirebaseMessaging.onMessageOpenedApp.listen((_) {
      context.pushRoute(const NotificationsRoute());
    });
  }

  void _handleForegroundNotification() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint(
        '********* FOREGROUND NOTIFICATION *********\nNOTIFICATION TITLE: ${message.notification!.title}\nNOTIFICATION BODY: ${message.notification!.body}',
      );
      if (message.notification != null) {
        getIt.get<LocalNotificationsService>().showLocalNotification(
              LocalNotification(
                title: message.notification!.title!,
                body: message.notification!.body!,
              ),
            );
      }
    });
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

  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }
}
