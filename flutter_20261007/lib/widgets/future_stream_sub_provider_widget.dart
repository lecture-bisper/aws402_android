//  File :  future_stream_sub_provider_widget.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오후 4:28
//  Desc :  

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FutureStreamSubProviderWidget extends StatelessWidget {
  const FutureStreamSubProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var futureState = Provider.of<String>(context);
    var streamState = Provider.of<int>(context);

    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.deepOrangeAccent,
        border: Border.all(
          color: Colors.indigo,
          width: 2.0,
        )
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'future : $futureState',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8.0,),
            Text(
              'Stream : $streamState',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}









