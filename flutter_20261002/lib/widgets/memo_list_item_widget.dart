//  File :  memo_list_item_widget.dart
//  User :  it
//  Date :  2026-10-02
//  Time :  오전 10:06
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261002/models/memo_model.dart';

class MemoListItemWidget extends StatelessWidget {
  final MemoModel memo;
  final int number;

  const MemoListItemWidget({super.key, required this.memo, required this.number});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Text('$number'),
        ),
        title: Text(
          memo.title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(memo.contents),
      ),
    );
  }

}









