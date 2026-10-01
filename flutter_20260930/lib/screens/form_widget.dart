//  File :  form_widget.dart
//  User :  it
//  Date :  2026-09-30
//  Time :  오후 4:03
//  Desc :  

import 'package:flutter/material.dart';

//  Form : UI 가 없는 위젯, 사용자가 입력한 데이터를 검증 및 관리를 위해서 사용하는 위젯, html의 <form> 태그와 비슷함
//    Form 태그 안에 사용자 입력을 위한 위젯을 사용 시 FormField<위젯> 타입의 사용자 입력 위젯을 사용해야 함
//    FormField<TextField> 를 사용하거나 FormField<TextField> 를 추상화한 TextFormField 를 사용할 수 있음
//    Form 사용 시 key 값을 사용하여 Form 객체를 얻어서 FormState 를 호출하여 유효성검증 이나 저장을 진행함
//    FormField 에는 validator, onSaved 속성이 존재함
//    validator 속성을 사용하여 데이터를 검증하고, onSaved 를 사용하여 데이터를 저장

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidget();
}

class _FormWidget extends State<FormWidget> {

  final _formKey = GlobalKey<FormState>();
  String? firstName;
  String? lastName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Form 사용하기'),
        Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'FirstName'
                ),
                //  매개변수가 사용자가 입력한 데이터
                validator: (value) {
                  if (value?.isEmpty ?? false) {
                    return "성은 필수 입력입니다.";
                  }
                  return null;
                },
                onSaved: (String? value) {
                  firstName = value;
                },
              ),
              SizedBox(height: 16,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'LastName',
                ),
                validator: (value) {
                  if (value?.isEmpty ?? false) {
                    return '이름은 필수 입력입니다.';
                  }
                  return null;
                },
                onSaved: (String? value) {
                  lastName = value;
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 16,),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState?.validate() ?? false) {
              _formKey.currentState?.save();
              debugPrint('firstName: $firstName, lastName: $lastName');
            }
          },
          child: Text('확인')
        ),
      ],
    );
  }

}









