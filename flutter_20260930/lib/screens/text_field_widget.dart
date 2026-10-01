//  File :  text_field_widget.dart
//  User :  it
//  Date :  2026-09-30
//  Time :  오후 2:05
//  Desc :  

import 'package:flutter/material.dart';

//  TextField : 사용자에게 키보드를 통한 문자를 입력받는 위젯, html 의 <input type="text"> 태그와 같음
//    TextStyle 를 사용하여 문자열 꾸미기가 가능함

//  TextEditingController 를 사용하여 TextField 위젯에 입력되는 내용을 가져올 수 있음
//    TextField 에 입력된 내용이 변경 시 마다 데이터를 가져오려면 addListener() 를 controller 에 등록하고, 사용 후에는 반드시 dispose() 로 리스너를 삭제해야 함
//    TextField 가 여러개일 경우 TextEditingController 도 TextField 의 수에 맞춰서 여러개 있어야 함

//    InputDecoration : TextField 위젯을 꾸밀 수 있음
//      labelText: 라벨 문자열
//      helperText: 아래쪽에 설명 문자열 입력
//      hintText: 입력 상자 안쪽에 출력되어있다가 사용자가 입력 시 사라지는 문자열
//      errorText: 아래쪽에 출력되는 오류 문자열
//      prefixIcon: 입력창 앞 부분에 고정적으로 출력되는 아이콘
//      counterText: 아래쪽에 출력되는 문자열
//      border: 테두리 설정, OutlineInputBorder, UnderlineInputBorder 중 하나를 사용

//    textInputAction : 스마트 기기의 가상 키보드의 엔터키의 종률 변경할 수 있음
//      TextInputAction.next : 다음 위젯으로 이동
//      TextInputAction.previous : 이전 위젯으로 이동
//      TextInputAction.search : 검색 버튼
//      TextInputAction.send : 전송 버튼

//    keyboardType : 가상 키보드의 종류를 변경할 수 있음
//      TextInputType.number : 숫자 키보드
//      TextInputType.text : 문자 키보드
//      TextInputType.phone : 전화번호 키보드
//      TextInputType.emailAddress : 이메일 키보드
//      TextInputType.url : url 키보드

//    obscureText : TextField 안의 텍스트를 '*' 와 같은 문자로 변환하여 출력, true|false 사용

//    maxLines, minLines : TextField 의 사용자 입력의 기본은 한줄 입력, maxLines, minLines 속성을 사용 시 여러줄 입력이 가능함
//      minLines 입력 시 출력되는 UI 가 설정한 길이만큼 출력되고, 더 많은 라인을 입력 시 maxLines 까지 입력 라인이 늘어남

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {

  final _controller = TextEditingController();
  final _emailController = TextEditingController();
  int textCounter = 0;

  void _printValue() {
    debugPrint('입력시마다 동작 : ${_controller.text}');
    setState(() {
      textCounter = _controller.text.length;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(_printValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            labelText: '이름',
            prefixIcon: Icon(Icons.input),
            border: OutlineInputBorder(),
            hintText: '힌트 텍스트',
            helperText:'이름을 입력하세요',
            counterText: '$textCounter characters',
          ),
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
          textInputAction: TextInputAction.search,
          obscureText: true,
        ),
        SizedBox(height: 16,),
        TextField(
          controller: _emailController,
          decoration: InputDecoration(
            labelText: '이메일',
            prefixIcon: Icon(Icons.email),
            border: UnderlineInputBorder(),
          ),
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.start,
          keyboardType: TextInputType.text,
          minLines: 2,
          maxLines: 5,
        ),
        SizedBox(height: 16,),
        ElevatedButton(
          onPressed: () {
            debugPrint('가져온 문자 : ${_controller.text}, 이메일 : ${_emailController.text}');
          },
          child: Text('클릭', style: TextStyle(fontSize: 24),),
        ),
      ],
    );
  }
}










