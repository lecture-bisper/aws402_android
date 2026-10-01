//  File :  dialog_widget.dart
//  User :  it
//  Date :  2026-09-30
//  Time :  오전 11:15
//  Desc :  

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

//  AlertDialog : 화면 중간에 알림창을 출력하는 위젯
//    알림창은 사용자 입력이나 특정 이벤트가 발생할 경우 화면에 출력되어야 하기 때문에 처음에는 숨겨져있음
//    title 속성은 다이얼로그의 제목
//    content 다이얼로그에 출력할 컨턴츠는 입력
//    action 속성은 화면 하단에 출력할 버튼을 입력

//  showDialog() 함수를 사용하여 AlertDialog 를 출력해야 함
//  showDialog() 의 builder 속성에 AlertDialog 위젯을 입력하여 출력함
//    barrierDismissible 속성은 다이얼로그 밖을 클릭 시 다이얼로그를 닫는 것에 대한 설정
//    context 속성은 다이얼로그를 출력할 위젯을 설정(보통 현재 화면을 출력한 위젯을 사용)

//  Navigator.of(context).pop() : 현재 열려진 다이얼로그 닫기 이벤트


//  BottomSheet : 화면 아래에서 올라오는 다이얼로그
//    showBottomSheet(), showModalBottomSheet() 함수 중 하나를 사용함
//    showBottomSheet() : 바텀시트가 출력되었을 경우 다른 화면의 UI 이벤트가 그대로 동작함, 다른 곳 선택 시 바텀시트가 계속 유지 됨
//    showModalBottomSheet() : 바텀시트가 출력되었을 경우 다른 화면의 UI 이벤트가 동작하지 않음, 바턴시트가 사라져야 다른 화면 UI의 이벤트를 사용할 수 있음, 다른 곳 선택 시 자동으로 바텀시트가 내려감


//  DatePicker : 사용자에게 날짜를 입력받는 위젯
//    showDatePicker() 를 호출하여 다이얼로그를 출력
//    날짜 정보를 받아오기 위해서 Future 을 반환값으로 사용하여 비동기 프로그래밍 방식을 사용해야 함
//    initialDate : 다이얼로그가 출력될 때 기본 선택된 날짜 설정
//    firstDate : 달력의 사용 가능한 최초 날짜 설정
//    lastDate : 달력의 사용 가능한 마지막 날짜 설정


//  TimePicker : 사용자에게 시간을 입력받는 위젯
//    시간 정보를 받아오기 위해서 Future 을 반환값으로 사용하여 비동기 프로그래밍 방식을 사용해야 함
//    showTimePicker() 를 호출하여 다이얼로그를 출력
//    initialTime : 다이얼로그가 출력될 때 기본 선택된 시간 설정

class DialogWidget extends StatefulWidget {
  const DialogWidget({super.key});

  @override
  State<DialogWidget> createState() => DialogWidgetState();
}

class DialogWidgetState extends State<DialogWidget> {
  DateTime dateValue = DateTime.now();
  TimeOfDay timeValue = TimeOfDay.now();

  void _dialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        // return AlertDialog(
        //   title: Text('다이얼로그 제목'),
        //   content: Text('다이얼로그 내용'),
        //   actions: [
        //     TextButton(
        //       onPressed: () {
        //         Navigator.of(context).pop();
        //       },
        //       child: Text('확인')
        //     ),
        //   ],
        // );

        return AlertDialog(
          title: Text('다이얼로그 제목'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {},),
                  Text('수신동의'),
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('확인'),
            ),
          ],
        );
      }
    );
  }

  void _bottomDialog() {
    showBottomSheet(
      context: context,
      backgroundColor: Colors.yellowAccent,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.add),
              title: Text('ADD'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.remove),
              title: Text('REMOVE'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    );
  }

  void _modalBottomDialog() {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.yellowAccent,
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.add),
                title: Text('ADD'),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.remove),
                title: Text('REMOVE'),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        }
    );
  }

  Future datePicker() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2016),
      lastDate: DateTime(2030),
    );

    if (picked != null) {
      setState(() => dateValue = picked);
    }
  }

  Future timePicker() async {
    TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (selectedTime != null) {
      setState(() => timeValue = selectedTime);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: _dialog,
            child: Text('dialog'),
          ),
          ElevatedButton(
            onPressed: _bottomDialog,
            child: Text('bottom sheet'),
          ),
          ElevatedButton(
            onPressed: _modalBottomDialog,
            child: Text('modal bottom sheet'),
          ),
          ElevatedButton(
            onPressed: datePicker,
            child: Text('date picker'),
          ),
          Text('date : ${DateFormat('yyyy-MM-dd').format(dateValue)}'),
          ElevatedButton(
            onPressed: timePicker,
            child: Text('time picker'),
          ),
          Text('time : ${timeValue.hour}:${timeValue.minute}'),
        ],
      ),
    );
  }

}









