import 'package:flutter/material.dart';

import '../constant/colors.dart';
import 'constant.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({super.key, required this.fontSize, this.fontWeight=FontWeight.normal});

  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text("빵셔틀", style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: colorLightBrown,
      fontFamily: "GmarketSans",
    ),);
  }
}