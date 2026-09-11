import 'dart:developer';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationServices {
  // Channel constants
  static const String orderChannelId = 'order_notification_channel';
  static const String orderChannelName = 'New Order Notifications';
  static const String orderChannelDescription =
      'Notifications for incoming new orders with custom alarm';

  static const String defaultChannelId = 'fcm_default_channel';
  static const String defaultChannelName = 'General Notifications';
  static const String defaultChannelDescription =
      'General notifications and updates';

  static const String orderSoundRaw =
      'order_alarm'; // android res/raw name (without extension)
  static const String orderSoundIos =
      'order_alarm.mp3'; // iOS bundled sound name

  // initialising firebase message plugin
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  // initialising local notification plugin
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // Create notification channels on Android
  Future<void> createNotificationChannels() async {
    if (Platform.isAndroid) {
      final androidPlugin = _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>();

      const orderChannel = AndroidNotificationChannel(
        orderChannelId,
        orderChannelName,
        description: orderChannelDescription,
        importance: Importance.max,
        playSound: true,
        sound: RawResourceAndroidNotificationSound(orderSoundRaw),
        enableVibration: true,
        enableLights: true,
      );

      const defaultChannel = AndroidNotificationChannel(
        defaultChannelId,
        defaultChannelName,
        description: defaultChannelDescription,
        importance: Importance.high,
        playSound: true,
        enableVibration: true,
      );

      await androidPlugin?.createNotificationChannel(orderChannel);
      await androidPlugin?.createNotificationChannel(defaultChannel);
    }
  }

  // function to initialise flutter local notification plugin
  Future<void> initLocalNotifications(BuildContext context) async {
    var androidInitializationSettings =
        const AndroidInitializationSettings('@mipmap/launcher_icon');
    var iosInitializationSettings = const DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    var initializationSetting = InitializationSettings(
      android: androidInitializationSettings,
      iOS: iosInitializationSettings,
    );

    await _flutterLocalNotificationsPlugin.initialize(
      initializationSetting,
      onDidReceiveNotificationResponse: (NotificationResponse response) {
        log('onDidReceiveNotificationResponse: ${response.payload}');
      },
    );

    await createNotificationChannels();
  }

  void firebaseInit(BuildContext context) {
    initLocalNotifications(context);

    FirebaseMessaging.onMessage.listen((message) {
      RemoteNotification? notification = message.notification;

      if (kDebugMode) {
        print("notifications title: ${notification?.title}");
        print("notifications body: ${notification?.body}");
        print("notifications data: ${message.data}");
      }

      if (Platform.isIOS) {
        forgroundMessage();
      }

      if (Platform.isAndroid) {
        showNotification(message);
      }
    });
  }

  void requestNotificationPermission() async {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      if (kDebugMode) {
        print('user granted permission');
      }
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      if (kDebugMode) {
        print('user granted provisional permission');
      }
    } else {
      if (kDebugMode) {
        print('user denied permission');
      }
    }
  }

  // function to show visible notification when app is active (Foreground)
  Future<void> showNotification(RemoteMessage message) async {
    final String? channelIdFromPayload =
        message.notification?.android?.channelId;
    final String? type = message.data['type']?.toString().toLowerCase();
    final String? titleText =
        (message.notification?.title ?? message.data['title'])
            ?.toString()
            .toLowerCase();
    final String? bodyText =
        (message.notification?.body ?? message.data['body'])
            ?.toString()
            .toLowerCase();

    // Determine if this is a new order notification
    final bool isOrderNotification = channelIdFromPayload == orderChannelId ||
        type == 'new_order' ||
        type == 'order' ||
        type == 'new' ||
        message.data['channel_id'] == orderChannelId ||
        (bodyText != null && bodyText.contains('new order')) ||
        (titleText != null && titleText.contains('order'));

    final AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      isOrderNotification ? orderChannelId : defaultChannelId,
      isOrderNotification ? orderChannelName : defaultChannelName,
      channelDescription: isOrderNotification
          ? orderChannelDescription
          : defaultChannelDescription,
      importance: isOrderNotification ? Importance.max : Importance.high,
      priority: isOrderNotification ? Priority.max : Priority.high,
      playSound: true,
      sound: isOrderNotification
          ? const RawResourceAndroidNotificationSound(orderSoundRaw)
          : null,
      icon: '@mipmap/launcher_icon',
      enableVibration: true,
    );

    final DarwinNotificationDetails darwinNotificationDetails =
        DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
      sound: isOrderNotification ? orderSoundIos : null,
    );

    final NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );

    final int notificationId =
        DateTime.now().millisecondsSinceEpoch.remainder(100000);
    final String title =
        message.notification?.title ?? message.data['title'] ?? 'Notification';
    final String body =
        message.notification?.body ?? message.data['body'] ?? '';

    await _flutterLocalNotificationsPlugin.show(
      notificationId,
      title,
      body,
      notificationDetails,
      payload: message.data.toString(),
    );
  }

  // function to get device token on which we will send the notifications
  Future<String> getDeviceToken() async {
    if (Platform.isIOS) {
      // On iOS, wait for APNS token before requesting FCM token
      String? apnsToken = await messaging.getAPNSToken();
      int retries = 0;
      while (apnsToken == null && retries < 10) {
        await Future.delayed(const Duration(seconds: 1));
        apnsToken = await messaging.getAPNSToken();
        retries++;
      }
      if (kDebugMode) {
        print("APNS Token: $apnsToken (waited $retries seconds)");
      }
    }

    try {
      String? token = await messaging.getToken();
      if (kDebugMode) {
        print("NEW FCM TOKEN: $token");
      }
      return token ?? '';
    } catch (e) {
      if (kDebugMode) {
        print("Error getting FCM token: $e");
      }
      return '';
    }
  }

  void isTokenRefresh() async {
    messaging.onTokenRefresh.listen((event) {
      log('FCM Token Refreshed: $event');
      if (kDebugMode) {
        print('NEW FCM TOKEN (Refreshed): $event');
      }
    });
  }

  // handle tap on notification when app is in background or terminated
  Future<void> setupInteractMessage(BuildContext context) async {
    // when app is terminated
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null && context.mounted) {
      handleMessage(context, initialMessage);
    }

    // when app is in background
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      if (context.mounted) {
        handleMessage(context, event);
      }
    });
  }

  void handleMessage(BuildContext context, RemoteMessage message) {
    if (kDebugMode) {
      print('handle ===== notification message: ${message.data}');
    }
  }

  Future forgroundMessage() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }
}
