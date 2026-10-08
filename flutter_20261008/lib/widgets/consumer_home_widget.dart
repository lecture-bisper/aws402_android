//  File :  consumer_home_widget.dart
//  User :  it
//  Date :  2026-10-08
//  Time :  오전 10:14
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261008/utils/change_provider.dart';
import 'package:flutter_20261008/widgets/consumer_sub1_widget.dart';
import 'package:flutter_20261008/widgets/consumer_sub2_widget.dart';
import 'package:provider/provider.dart';

class ConsumerHomeWidget extends StatelessWidget {
  const ConsumerHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  Consumer 사용, Consumer에서 사용할 타입을 제네릭을 입력
            //  Consumer 사용 시 사용할 상태 데이터의 수에 따라 Consumer, Consumer2, ..., Consumer6 까지 존재함
            //  Consumer 의 builder 에 등록된 것은 build() 를 다시 실행
            //  child 에 등록된 것은 화면 다시 그리기를 제외함
            Consumer2<MyDataModel1, MyDataModel2>(
              //  builder 에 등록되어 상태 데이터를 사용함
              builder: (context, model1, model2, child) {
                return ConsumerSub1Widget(model1: model1, model2: model2, child: child);
              },
              //  child 에 ConsumerSub2Widget 가 등록되어 상태 데이터에서 제외됨
              child: ConsumerSub2Widget(),
            ),
            SizedBox(height: 8,),
            Column(
              children: [
                FilledButton(
                  onPressed: () {
                    //  프로바이더를 통해서 MyDataModel1 의 상태 데이터를 가져옴
                    var model1 = Provider.of<MyDataModel1>(context, listen: false);
                    debugPrint('프로바이더로 등록한 model1 상태 데이터 : ${model1.data}');
                    model1.changeData();
                  },
                  child: Text('model1 change'),
                ),
                SizedBox(height: 8,),
                FilledButton(
                  onPressed: () {
                    //  프로바이더를 통해서 MyDataModel2 의 상태 데이터를 가져옴
                    var model2 = Provider.of<MyDataModel2>(context, listen: false);
                    debugPrint('프로바이더로 등록한 model2 상태 데이터 : ${model2.data}');
                    model2.changeData();
                  },
                  child: Text('model2 change'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}









