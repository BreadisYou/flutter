import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "지도로 보기",
          style: TextStyle(
            fontFamily: "GmarketSans",
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // 제목을 가운데로 정렬
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: InteractiveViewer(
          constrained: false,
          boundaryMargin: EdgeInsets.all(20),
          minScale: 1.0,
          maxScale: 4.0,
          child: Image.asset(
            'assets/image/map_image.png', // 실제 지도 이미지 경로로 변경하세요.
            fit: BoxFit.none,
          ),
        ),
      ),
    );
  }
}