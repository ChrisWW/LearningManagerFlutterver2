import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {



  // Future<void> rescheduleNotifications() async {
  //   final localNotificationsPlugin = FlutterLocalNotificationsPlugin();
  //   const initializationSettings = InitializationSettings(
  //       android: AndroidInitializationSettings('app_icon'), iOS: IOSInitializationSettings());
  //   const androidChannelSpecifics = AndroidNotificationDetails(
  //       'notificationGoal', 'notificationGoal');
  //   const iOSNotificationDetails = IOSNotificationDetails();
  //   const notificationsDetails =
  //       NotificationDetails();
  //
  //   await localNotificationsPlugin.initialize(initializationSettings);
  //   await localNotificationsPlugin.cancelAll();
  //
  //   // Calculate the next notifications.
  //   final notificationTimes = calculateNotificationTimes();
  //
  //   var _currentNotificationId = 0;
  //   for (final time in notificationTimes) {
  //     localNotificationsPlugin.schedule(
  //       _currentNotificationId++,
  //       "It's time to take your medicine.",
  //       'Take the red pill',
  //       time,
  //       notificationsDetails,
  //       androidAllowWhileIdle: true,
  //     );
  //   }
  // }
}
