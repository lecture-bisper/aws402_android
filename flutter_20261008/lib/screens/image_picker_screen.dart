//  File :  image_picker_screen.dart
//  User :  it
//  Date :  2026-10-08
//  Time :  오후 1:57
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261008/widgets/image_picker_widget.dart';

//  ImagePicker : 갤러리 앱에 저장된 사진이나 카메라 앱으로 찍은 사진을 전송하거나 화면에 출력하는 기능
//    플러터에서는 image_picker 패키지를 사용하여 구현함(설치 필요)

//  안드로이드는 추가 권한 설정이 없음

//  IOS 는 key 를 info.plist 파일에 등록해야 함
//  <key>NSCameraUsageDescription</key>
//  <string>NSCameraUsageDescription</string>
//  <key>NSMicrophoneUsageDescription</key>
//  <string>NSMicrophoneUsageDescription</string>
//  <key>NSPhotoLibraryUsageDescription</key>
//  <string>NSPhotoLibraryUsageDescription</string>


//  이미지 갤러리의 이미지를 사용할 수 있음
//  var image = await ImagePicker().pickImage(source: ImageSource.gallery);

//  카메라 사용
//  var image = await ImagePicker().pickImage(source: ImageSource.camera);

class ImagePickerScreen extends StatelessWidget {
  final String title;
  const ImagePickerScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: ImagePickerWidget(),
    );
  }
}









