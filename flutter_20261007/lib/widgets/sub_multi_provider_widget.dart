//  File :  sub_multi_provider_widget.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오후 4:02
//  Desc :  

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/counter.dart';

class SubMultiProviderWidget extends StatelessWidget {
  const SubMultiProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context);
    var intData = Provider.of<int>(context);
    var strData = Provider.of<String>(context);

    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        border: Border.all(
          color: Colors.cyan,
          width: 2.0,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Provider : ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8.0,),
            Text(
              'int data : $intData',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8.0,),
            Text(
              'String data : $strData',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8.0,),
            Text(
              'Counter data : ${counter.count}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8.0,),
            FilledButton(onPressed: () {
              counter.increment();
            },
              child: Text('increment'),
            ),
          ],
        ),
      ),
    );
  }
}









