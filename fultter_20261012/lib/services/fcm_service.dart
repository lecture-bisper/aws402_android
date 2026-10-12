//  File :  fcm_service.dart
//  User :  it
//  Date :  2026-10-12
//  Time :  오후 3:27
//  Desc :  

import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

class FcmService {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  final List<StreamSubscription> _subscriptions = [];

  Future<String?> init({
    required ValueChanged<RemoteMessage> onForeground,
    required ValueChanged<RemoteMessage> onOpened,
    required ValueChanged<String> onTokenRefresh,
  }) async {
    final settings = await _messaging.requestPermission();
    
    if (settings.authorizationStatus == AuthorizationStatus.denied) {
      debugPrint('알림 권한이 거부되었습니다.');
    }
    
    final token = await _messaging.getToken();
    debugPrint('FCM 토큰 : $token');
    
    _subscriptions.add(_messaging.onTokenRefresh.listen(onTokenRefresh));
    _subscriptions.add(FirebaseMessaging.onMessage.listen(onForeground));
    _subscriptions.add(FirebaseMessaging.onMessageOpenedApp.listen(onOpened));

    final inital = await _messaging.getInitialMessage();

    if (inital != null) {
      onOpened(inital);
    }

    return token;
  }

  void dispose() {
    for (final sub in _subscriptions) {
      sub.cancel();
    }
    _subscriptions.clear();
  }
}









