import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/services/local_notifications/local_notification.dart';
import 'package:icare/src/core/services/local_notifications/local_notifications_service.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';

@RoutePage()
class EntryView extends StatefulWidget {
  const EntryView({super.key});

  @override
  State<EntryView> createState() => _EntryViewState();
}

class _EntryViewState extends State<EntryView> {
  void _goToNextView() {
    Helper.uId =
        getIt.get<CacheHelper>().getStringData(key: AppStrings.cachedUserId);

    bool? onboarding =
        getIt.get<CacheHelper>().getBoolData(key: AppStrings.cachedOnboarding);

    if (onboarding != null) {
      if (Helper.uId != null) {
        context.replaceRoute(const BottomNavBarRoute());
        context.read<UserCubit>().getUserData().then((value) {
          debugPrint('****** CURRENT USER:${Helper.currentUser} ******');
        });
      } else {
        context.replaceRoute(const StartRoute());
      }
    } else {
      context.replaceRoute(const OnboardingRoute());
    }
  }

  @override
  void initState() {
    super.initState();
    // To ensure that navigation calls are performed after the widget tree has been built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _goToNextView();
    });
    _handleForegroundNotification();
  }

  void _handleForegroundNotification() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint(
        '********* FOREGROUND NOTIFICATION *********\n NOTIFICATION TITLE: ${message.notification!.title}\n NOTIFICATION BODY: ${message.notification!.body}',
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

  void _setSystemUIOverlayStyle() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        // systemNavigationBarColor: Colors.transparent,
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  void didChangeDependencies() {
    _setSystemUIOverlayStyle();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox.shrink(),
    );
  }
}
