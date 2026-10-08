//  File :  icon_widget.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오전 10:03
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261007/widgets/parent_widget.dart';

class IconWidget extends StatelessWidget {
  //  부모가 전달한 상태 데이터를 저장하고 있는 상수
  final bool favorited;
  //  부모가 전달한 상태 데이터를 수정하는 함수, 함수 저장하기 때문에 데이터 타입이 Function 임
  final Function onChanged;

  //  부모가 전달한 데이터를 매개변수로 받아서 사용
  const IconWidget({super.key, required this.favorited, required this.onChanged});

  void _handleTap() {
    onChanged();
  }

  @override
  Widget build(BuildContext context) {
    //  findAncestorStateOfType() 통해서 지정한 조상 위젯의 상태를 가져옴
    ParentWidgetState? state = context.findAncestorStateOfType<ParentWidgetState>();

    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green,
          width: 2.0
        ),
      ),
      child: Center(
        child: IconButton(
          onPressed: _handleTap,
          // icon: (favorited ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
          //  가져온 조상 위젯의 상태를 직접 사용
          icon: ((state?.favorited ?? false) ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
          iconSize: 20.0,
          color: Colors.redAccent,
        ),
      ),
    );
  }
}










