import 'package:flutter/material.dart';
import 'package:sogra/constant/font.dart';

import '../constant/colors.dart';


class ReviewBread extends StatefulWidget {
  const ReviewBread({super.key});

  @override
  State<ReviewBread> createState() => _ReviewBreadState();
}

class _ReviewBreadState extends State<ReviewBread> {


  @override
  Widget build(BuildContext context) {

    final double _screenheight = MediaQuery
        .of(context)
        .size
        .height;
    final double _screenwidth = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      backgroundColor: greyColor,
      appBar: AppBar(
        title: Text(
            '리뷰 남기기',
          style: GmarketSans24,
        ),
      ),
      body: SafeArea(
        child: Container(
          color: greyColor,
          height: _screenheight,
          width: _screenwidth,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: [
                //TODO CARD 추가하기
              ],
            ),
          ),
        ),
      ),
    );
  }
}
