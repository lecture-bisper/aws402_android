//  File :  fcm_screen.dart
//  User :  it
//  Date :  2026-10-12
//  Time :  오후 3:26
//  Desc :  

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fultter_20261012/services/fcm_service.dart';

class FcmScreen extends StatefulWidget {
  const FcmScreen({super.key});

  @override
  State<FcmScreen> createState() => _FcmScreenState();
}

class _FcmScreenState extends State<FcmScreen> {
  final FcmService _fcm = FcmService();
  String? _token;
  final List<String> _logs = [];

  @override
  void initState() {
    super.initState();
    _initFcm();
  }

  Future<void> _initFcm() async {
    final token = await _fcm.init(
      onForeground: (message) => _addLog('포그라운드', message, showSnackBar: true),
      onOpened: (message) => _addLog('알림 탭', message),
      onTokenRefresh: (newToken) {
        if (mounted) {
          setState(() => _token = newToken );
        }
      },
    );

    if (!mounted) {
      return;
    }
    setState(() => _token = token);
  }

  void _addLog(String kind, RemoteMessage message, {bool showSnackBar = false}) {
    if (!mounted) {
      return;
    }

    final title = message.notification?.title ?? '(제목 없음)';
    final body = message.notification?.body ?? '';
    setState(() => _logs.insert(0, '[$kind] $title - $body') );

    if (showSnackBar) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('$title\n$body')),
      );
    }
  }

  Future<void> _copyToken() async {
    final token = _token;

    if (token == null) {
      return;
    }

    await Clipboard.setData(ClipboardData(text: token));

    if (!mounted) {
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('토큰을 복사했습니다.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('FCM 테스트'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '내 기기 토큰',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0,),
            SelectableText(_token ?? '발급 중 ...'),
            SizedBox(height: 8.0,),
            FilledButton.icon(
              onPressed: _token == null ? null : _copyToken,
              icon: const Icon(Icons.copy),
              label: const Text('토큰 복사'),
            ),
            Divider(height: 32.0,),
            Text(
              '받은 메시지',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _logs.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(_logs[index]),);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _fcm.dispose();
    super.dispose();
  }
}








