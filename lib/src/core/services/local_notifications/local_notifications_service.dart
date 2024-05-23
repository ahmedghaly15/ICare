import 'dart:math';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:icare/src/core/services/local_notifications/local_notification.dart';
import 'package:icare/src/core/utils/app_strings.dart';

class LocalNotificationsService {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;

  const LocalNotificationsService(this._flutterLocalNotificationsPlugin);

  Future<void> initLocalNotifications() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    await _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  void showLocalNotification(LocalNotification notification) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      AppStrings.localNotificationsChannelId,
      AppStrings.localNotificationsChannelName,
      importance: Importance.max,
      priority: Priority.high,
    );
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await _flutterLocalNotificationsPlugin.show(
      Random().nextInt(1000),
      notification.title,
      notification.body,
      platformChannelSpecifics,
    );
  }
}
