//  File :  checkbox_radio_slider_widget.dart
//  User :  it
//  Date :  2026-09-30
//  Time :  오후 3:18
//  Desc :  

import 'package:flutter/material.dart';

//  Checkbox : 사용자에게 true, false 값을 입력받는 위젯
//    onChanged 속성을 사용하여 입력된 값을 사용할 수 있음

//  RadioGroup : 플러터 3.35 부터 기존의 Radio 에서 groupValue 와 onChange 가 삭제되고, 새로운 위젯인 RadioGroup 로 옮겨짐
//    RadioGroup 의 자식 위젯으로 Row 나 Column 을 사용하여 여러개의 Radio 를 입력하여 사용
//    Radio 에는 value 값만 입력함
//    groupValue 에 사용자가 선택한 Radio 위젯의 value 를 저장
//    onChange 에 Radio 위젯의 값 변경을 확인함

//  Slider : 음량 조절과 같이 막대를 밀어서 숫자값을 입력받는 위젯
//    min, max 속성을 하여 최소, 최대값을 설정
//    사용자가 막대를 움직이면 onChanged 속성에 등록한 함수가 동작함

//  Switch : Checkbox 와 같이 사용자에게 true, false 를 입력받는 위젯

class CheckboxRadioSliderWidget extends StatefulWidget {
  const CheckboxRadioSliderWidget({super.key});

  @override
  State<CheckboxRadioSliderWidget> createState() => _CheckboxRadioSliderWidget();
}

class _CheckboxRadioSliderWidget extends State<CheckboxRadioSliderWidget> {

  bool? isChecked = true;
  String? selectPlatform;
  double sliderValue = 5.0;
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Checkbox 사용'),
        Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() => isChecked = value);
              },
            ),
            Text('Checkbox 의 값 : $isChecked'),
          ],
        ),
        SizedBox(height: 16,),
        Text('Radio 사용'),
        RadioGroup(
          groupValue: selectPlatform,
          onChanged: (value) {
            setState(() => selectPlatform = value);
          },
          child: Row(
            children: [
              const Radio(value: '안드로이드',),
              const Text('안드로이드'),
              const Radio(value: '아이폰'),
              const Text('아이폰'),
            ],
          ),
        ),
        Text('Radio 로 선택한 값 : $selectPlatform'),
        SizedBox(height: 16,),
        Text('Slider 사용'),
        Slider(
          value: sliderValue,
          min: 0,
          max: 10,
          onChanged: (double value) {
            setState(() {
              sliderValue = value;
            });
          }
        ),
        Text('Slider 의 현재 값 : $sliderValue'),
        SizedBox(height: 16,),
        Text('Switch 사용'),
        Switch(
          value: switchValue,
          onChanged: (bool value) {
            setState(() => switchValue = value);
          }
        ),
        Text('Switch 의 값 : $switchValue'),
      ],
    );
  }

}







