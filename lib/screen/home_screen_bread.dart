import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sogra/common/NoAnimation.dart';
import 'package:sogra/common/logo.dart';
import 'package:sogra/constant/colors.dart';
import 'package:sogra/constant/font.dart';
import 'package:sogra/main.dart';
import 'package:sogra/widget/image_slider.dart';

import 'home_screen_desert.dart';

class HomeScreenBread extends StatefulWidget {
  const HomeScreenBread({super.key});

  @override
  State<HomeScreenBread> createState() => _HomeScreenBreadState();
}

class _HomeScreenBreadState extends State<HomeScreenBread> {
  bool subscribe = false;
  void showCustomDialog(BuildContext context) {

    final double _screenheight = MediaQuery
        .of(context)
        .size
        .height;
    final double _screenwidth = MediaQuery
        .of(context)
        .size
        .width;


    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: whiteColor,
          content: SizedBox(
            height: _screenheight * 0.8,
            width: _screenwidth * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 0,),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop(); // Close the dialog
                      },
                    ),
                  ],
                ),
                Text(
                  '이주의 빵',
                  style: TextStyle(
                    fontFamily: "GmarketSans",
                    color: colorLightBrown,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: greyColor,
                      ),
                      child: Center(
                        child: Text(
                          '네쪽 마늘빵 X 1',
                          style: GmarketSans24,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 70,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: greyColor,
                      ),
                      child: Center(
                        child: Text(
                          '팥생크림빵 X 1',
                          style: GmarketSans24,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 70,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: greyColor,
                      ),
                      child: Center(
                        child: Text(
                          '초코크림빵 X 1',
                          style: GmarketSans24,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 70,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: greyColor,
                      ),
                      child: Center(
                        child: Text(
                          '쿠키크림빵 X 1',
                          style: GmarketSans24,
                        ),
                      ),
                    ),
                  ],
                ),

                GestureDetector(
                  onTap: () {
                    //showCustomDialog(context);
                  },
                  child: Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                      color: colorLightBrown,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (subscribe)
                          Text(
                            "빵 구독하기",
                            style: GmarketSans24,
                          ),
                        if (!subscribe)
                          Text(
                            "구독 변경하기",
                            style: GmarketSans24,
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

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
      body: SafeArea(
        child: Container(
          color: greyColor,
          height: _screenheight,
          width: _screenwidth,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyLogo(size: _screenheight * 0.065),
                    SizedBox(width: 20,),
                    Text(
                      "빵셔틀",
                      style: GmarketSans24gr,
                    ),
                  ],
                ),
                Text(
                  "이주의 빵",
                  style: GmarketSans24,
                ),
                SizedBox(
                  height: _screenheight * 0.33,
                  width: _screenwidth - 30,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          height: _screenheight * 0.33,
                          width: _screenwidth - 20,
                          child: Image.network( // TODO storage 연동
                            'https://firebasestorage.googleapis.com/v0/b/sogra-4d8b4.appspot.com/o/weekly%2Fweekly_bread_1.png?alt=media&token=f9ab0534-2473-458f-b4eb-7014a93ffadc',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: GestureDetector(
                          onTap: () {
                            showCustomDialog(context);
                          },
                          child: Container(
                            height: _screenheight * 0.07,
                            width: _screenwidth - 30,
                            color: Colors.black.withOpacity(0.2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "구독하기",
                                  style: GmarketSans24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              NoAnimationRouteBuilder(
                                builder: (context) => HomeScreenDesert(),
                              ),
                            );
                          },
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/sogra-4d8b4.appspot.com/o/dessert_button.png?alt=media&token=bf08d5a5-5ffb-49ba-860f-49da87e1207c',
                            width: 70,
                            height: 70,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    height: _screenheight * 0.11,
                    width: _screenwidth - 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: whiteColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/review.png',
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 20,),
                        Text(
                          "리뷰 남기기",
                          style: GmarketSans24,
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: _screenheight * 0.22,
                      width: _screenwidth / 2 - 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: whiteColor,
                      ),
                      child: ImageSlider(
                        height: _screenheight * 0.22, // 부모 Container와 동일
                        width: _screenwidth / 2 - 30, // 부모 Container와 동일
                        children: [ // TODO Storage 연동
                          Image.network('https://firebasestorage.googleapis.com/v0/b/sogra-4d8b4.appspot.com/o/best%2Fbread_2024_4.png?alt=media&token=844e6cbc-05b8-4383-818d-e759ba86827f'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        //
                      },
                      child: Container(
                        height: _screenheight * 0.22,
                        width: _screenwidth / 2 - 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: whiteColor,
                        ),
                        child: Image.asset(
                          'assets/map.png',
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}