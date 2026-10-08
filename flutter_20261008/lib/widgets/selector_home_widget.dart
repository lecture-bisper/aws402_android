//  File :  selector_home_widget.dart
//  User :  it
//  Date :  2026-10-08
//  Time :  오전 11:08
//  Desc :  

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/change_provider.dart';

class SelectorHomeWidget extends StatelessWidget {
  const SelectorHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  컨슈머 사용
            Consumer<MyDataModel3>(
              builder: (context, model, child) {
                return Container(
                  color: Colors.green,
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      'Consumer, data1: ${model.data1}, data2: ${model.data2}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 8.0,),
            //  셀렉터 사용, 제네릭의 두번째 매개변수로 사용할 상태 데이터의 데이터 타입을 입력
            Selector<MyDataModel3, int>(
              //  Selector 의 builder 에 등록된 것을 다시 그려줌
              //  builder 에 등록된 익명함수의 두번째 매개변수가 selector 에 등록된 익명함수의 반환값
              builder: (context, data, child) {
                return Container(
                  color: Colors.cyan,
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      'Selector data: $data',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
              //  셀렉터 사용 시 반드시 selector 속성에 함수를 입력해야 함
              //  selector 에 등록하는 익명 함수의 두번째 매개변수가 Selector 사용 시 제네릭으로 등록한 클래스의 객체임
              //  익명 함수의 반환값이 builder 속성에 등록되는 익명함수의 두번째 매개변수로 전달함
              selector: (context, model) => model.data2,
            ),
            SizedBox(height: 8.0,),
            Column(
              children: [
                FilledButton(
                  onPressed: () {
                    var model1 = Provider.of<MyDataModel3>(context, listen: false);
                    model1.changeData1();
                  },
                  child: Text('model data1 change'),
                ),
                SizedBox(height: 8.0,),
                FilledButton(
                  onPressed: () {
                    var model1 = Provider.of<MyDataModel3>(context, listen: false);
                    model1.changeData2();
                  },
                  child: Text('model data2 change'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}









