//  File :  image_widget.dart
//  User :  it
//  Date :  2026-09-29
//  Time :  오전 11:08
//  Desc :  


import 'package:flutter/material.dart';

//  Image : UI 에 이미지를 출력하는 위젯
//    이미지를 가져올 경우 ImageProvider(추상 클래스) 로 가져와야 함
//    ImageProvider 를 상속받은 AssetImage, FileImage, MemoryImage, NetworkImage, ResizeImage 로 가져옴
//      AssetImage : 에셋으로 등록한 이미지
//      FileImage : 파일 경로를 통해서 가져오는 이미지(스마트 기기의 갤러리앱 및 특정 폴더의 이미지)
//      MemoryImage : 메모리 데이터의 이미지
//      NetworkImage : 네트워크 통신을 통해서 가져오는 이미지
//      ResizeImage : 이미지 크기 변경

//    Image(image: AssetImage('경로'))
//    Image(image: ResizeImage(AssetImage('경로'), width: xx, height: xx)

//    Image.asset(), Image.network(), Image.file(), Image.memory() 로 쉽게 사용 가능

//    fit : Image 사용 시 특정 영역을 채우는 방식 설정
//      BoxFit객체를 사용하여 영역을 채움
//      fill : 높이와 너비를 모두 채움, 비율이 변경됨
//      contain : 이미지가 잘리거나 비율 변화없이 가능한 크게 영역을 채움
//      cover : 비율 변화없이 특정 영역을 모두 채움, 이미지가 잘릴 수 있음
//      fitWidth : 특정 영역의 너비만큼 모두 채움, 이미지가 잘릴 수 있음
//      fitHeight : 특정 영역의 높이만큼 모두 채움, 이미지가 잘릴 수 있음
//      none : 원본 이미지의 크기 사용, 이미지가 잘릴 수 있음
//      scaleDown : 특정 영역안에 이미지가 모두 출력되도록 크기를 조절

class ImageWidget extends StatelessWidget {

  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          color: Colors.red,
          child: Image.asset(
            'images/sub/dog03.jpg',
            width: 100,
            height: 200,
            fit: BoxFit.scaleDown,
          ),
        ),
        Image(
          image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        ),
      ],
    );
  }

}










