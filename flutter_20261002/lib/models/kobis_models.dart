//  File :  kobis_models.dart
//  User :  it
//  Date :  2026-10-02
//  Time :  오후 4:28
//  Desc :  


import 'dart:convert';

class DailyBoxOfficeResponse {
  final BoxOfficeResult boxOfficeResult;

  const DailyBoxOfficeResponse({required this.boxOfficeResult});

  factory DailyBoxOfficeResponse.fromJson({required Map<String, dynamic> jsonData}) {
    return DailyBoxOfficeResponse(
      boxOfficeResult: jsonData['boxOfficeResult']
    );
  }
}


class BoxOfficeResult {
  final String boxofficeType;
  final String showRange;
  final List<DailyBoxOfficeItem> dailyBoxOfficeList;

  const BoxOfficeResult({
    required this.boxofficeType,
    required this.showRange,
    required this.dailyBoxOfficeList
  });

  factory BoxOfficeResult.fromJson({required Map<String, dynamic> jsonData}) {
    var list = jsonData['dailyBoxOfficeList'] as List;
    List<DailyBoxOfficeItem> dailyBoxOfficeItemList = list.map((item) => DailyBoxOfficeItem.fromJson(jsonData: item)).toList();

    return BoxOfficeResult(
      boxofficeType: jsonData['boxofficeType'],
      showRange: jsonData['showRange'],
      dailyBoxOfficeList: dailyBoxOfficeItemList
    );
  }
}

class DailyBoxOfficeItem {
  final String? rnum;
  final String? rank;
  final String? rankInten;
  final String? rankOldAndNew;
  final String? movieCd;
  final String? movieNm;
  final String? openDt;
  final String? salesAmt;
  final String? salesShare;
  final String? salesInten;
  final String? salesChange;
  final String? salesAcc;
  final String? audiCnt;
  final String? audiInten;
  final String? audiChange;
  final String? audiAcc;
  final String? scrnCnt;
  final String? showCnt;

  const DailyBoxOfficeItem({
    this.rnum,
    this.rank,
    this.rankInten,
    this.rankOldAndNew,
    this.movieCd,
    this.movieNm,
    this.openDt,
    this.salesAmt,
    this.salesShare,
    this.salesInten,
    this.salesChange,
    this.salesAcc,
    this.audiCnt,
    this.audiInten,
    this.audiChange,
    this.audiAcc,
    this.scrnCnt,
    this.showCnt
  });

  factory DailyBoxOfficeItem.fromJson({required Map<String, dynamic> jsonData}) {
    return DailyBoxOfficeItem(
      rnum: jsonData['rnum'],
      rank: jsonData['rank'],
      rankInten: jsonData['rankInten'],
      rankOldAndNew: jsonData['rankOldAndNew'],
      movieCd: jsonData['ramovieCdnk'],
      movieNm: jsonData['movieNm'],
      openDt: jsonData['openDt'],
      salesAmt: jsonData['salesAmt'],
      salesShare: jsonData['salesShare'],
      salesInten: jsonData['salesInten'],
      salesChange: jsonData['salesChange'],
      salesAcc: jsonData['salesAcc'],
      audiCnt: jsonData['audiCnt'],
      audiInten: jsonData['audiInten'],
      audiChange: jsonData['audiChange'],
      audiAcc: jsonData['audiAcc'],
      scrnCnt: jsonData['scrnCnt'],
      showCnt: jsonData['showCnt'],
    );
  }
}








