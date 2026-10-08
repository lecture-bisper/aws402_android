//  File :  image_picker_widget.dart
//  User :  it
//  Date :  2026-10-08
//  Time :  오후 2:14
//  Desc :  

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  //  image_picker 패키지가 제공하는 이미지 리소스 전체 경로를 저장할 수 있는 데이터 타입
  XFile? _image;

  Future getGalleryImage() async {
    //  image_picker 패키지 사용
    //  pickImage() 를 통해서 이미지 가져오기, 이미지를 가져올 대상 선택
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() => _image = image);
  }

  Future getCameraImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.camera);

    setState(() => _image = image);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigoAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: getGalleryImage,
              child: Text('gallery')
            ),
            SizedBox(height: 8.0,),
            Center(
              child: _image == null
                ? Text(
                '선택된 이미지 없음',
                style: TextStyle(color: Colors.white,),)
                : CircleAvatar(
                backgroundImage: FileImage(File(_image!.path)),
                radius: 100,
              ),
            ),
            SizedBox(height: 8.0,),
            FilledButton(
              onPressed: getCameraImage,
              child: Text('camera')
            ),
          ],
        ),
      ),
    );
  }
}









