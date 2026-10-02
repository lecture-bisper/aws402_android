//  File :  memo_model.dart
//  User :  it
//  Date :  2026-10-02
//  Time :  오전 9:42
//  Desc :  

class MemoModel {
  final String title;
  final String contents;

  const MemoModel({required this.title, required this.contents});

  MemoModel copyWith({String? title, String? contents}) => MemoModel(
    title: title ?? this.title,
    contents: contents ?? this.contents
  );
}










