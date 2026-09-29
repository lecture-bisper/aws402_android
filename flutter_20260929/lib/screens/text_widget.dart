//  File :  text_widget.dart
//  User :  it
//  Date :  2026-09-29
//  Time :  오전 10:05
//  Desc :  플러터 기본 위젯 Text()

import 'package:flutter/material.dart';

//  Text : 문자열을 UI 에 출력하는 위젯
//    Text(String data, { ... }) : 기본 생성자
//    Text.rich(InlineSpan textSpan, { ... }) : 네임드 생성자, 문자열을 다양하게 꾸밀 수 있음

//  textAlign : 문자열 정렬, start, end, center, left, right 등이 있음
//  TextStyle : 문자열을 모양을 꾸밀 경우 style 속성에 TextStyle 객체로 모양을 지정해야 함
//    color, backgroundColor, decoration, fontWight, fontStyle, fontSize, height 등의 속성이 있음
//  maxLines : Text 에 긴 문자열을 출력 시 자동 줄바꿈으로 여러줄에 표시됨
//    지정한 줄 크기 까지만 출력됨
//    문자열이 생략된 것을 알리는 효과를 주고 싶을 경우 overflow 를 사용함
//  overflow : 문자열이 생략된 것을 알리는 효과
//    visible, ellipsis, fade, clip
//  TextSpan : Text.rich() 사용 시 문자열의 일부만 꾸밀 수 있음

class TextWidget extends StatelessWidget {

  TextWidget({super.key});

  String longText = '국회나 그 위원회의 요구가 있을 때에는 국무총리·국무위원 또는 정부위원은 출석·답변하여야 하며, 국무총리 또는 국무위원이 출석요구를 받은 때에는 국무위원 또는 정부위원으로 하여금 출석·답변하게 할 수 있다.';

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '안녕하세요',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.redAccent,
            height: 2,
            backgroundColor: Colors.amber,
            decoration: TextDecoration.underline,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.wavy,
          ),
        ),
        Text(
          longText,
          style: TextStyle(
            fontSize: 20
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        RichText(
          text: TextSpan(
            text: 'HE',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: 'L',
                style: TextStyle(
                  fontStyle: FontStyle.italic
                ),
                children: [
                  TextSpan(text: 'LO'),
                  TextSpan(
                    text: 'WO',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
              TextSpan(
                text: 'RLD',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }

}










