//  File :  kobis_dailyboxoffice_screen.dart
//  User :  it
//  Date :  2026-10-02
//  Time :  오후 3:58
//  Desc :  

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_20261002/models/kobis_models.dart';

class KobisDailyboxofficeScreen extends StatefulWidget {
  const KobisDailyboxofficeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _KobisDailyboxofficeScreenState();
}

class _KobisDailyboxofficeScreenState extends State<KobisDailyboxofficeScreen> {

  late final Dio _dio = Dio(
      BaseOptions(
          baseUrl: 'https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice',
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 3),
          headers: {
            Headers.contentTypeHeader: 'application/json',
            Headers.acceptHeader: 'application/json'
          }
      )
  );

  List<DailyBoxOfficeItem> _moveList = [];
  bool _isLoading = false;

  Future<void> _loadMoveList() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final dynamic res = await _dio.get(
        '//searchDailyBoxOfficeList.json?key=c55013eadce1f0005fae142c556a228d&targetDt=20260926',
      );

      var boxOfficeResult = res.data['boxOfficeResult'];
      final List<dynamic> dailyBoxOfficeList = boxOfficeResult['dailyBoxOfficeList'];
      final List<DailyBoxOfficeItem> list = dailyBoxOfficeList.map((item) => DailyBoxOfficeItem.fromJson(jsonData: item)).toList();

      setState(() {
        _moveList = list;
        _isLoading = false;
      });

    }
    catch (e, s) {
      setState(() {
        _isLoading = false;
      });
      print('$e\n$s');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('데이터를 가져오지 못했습니다 : $e'))
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FilledButton(
            onPressed: _isLoading ? null : _loadMoveList,
            child: Text('조회하기'),
          ),
          SizedBox(height: 8.0,),
          Divider(),
          SizedBox(height: 16.0,),
          Expanded(
            child: _isLoading
            ? Center(child: CircularProgressIndicator(),)
            : ListView.separated(
              itemCount: _moveList.length,
              separatorBuilder: (_, __) => Divider(),
              itemBuilder: (context, index) {
                final movie = _moveList[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${movie.rank}'),
                  ),
                  title: Text('${movie.movieNm}'),
                  subtitle: Text('개봉일 : ${movie.openDt}'),
                  trailing: Text('관람객 : ${movie.audiAcc}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _dio.close();

    super.dispose();
  }

}








