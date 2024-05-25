import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      backgroundColor: colorApricotWhite,
      body: SafeArea(
        child: Container(
          color: colorApricotWhite,
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
                  ],
                ),
                Text(
                  "이번 주 추천 빵",
                  style: GmarketSans24,
                ),
                SizedBox(
                  height: _screenwidth * 0.33,
                  width: _screenwidth - 30,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          height: _screenheight * 0.33,
                          width: _screenwidth - 30, //TODO firebase에서 Image 가져와야함
                          child: Image.asset(
                            'assets/image/firebase_image.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                          height: _screenheight * 0.07,
                          width: _screenwidth - 30,
                          color: Colors.black..withOpacity(0.5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "구독하기",
                                style: GmarketSans12,
                              ),
                            ],
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
                              MaterialPageRoute(
                                builder: (context) => HomeScreenDesert(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/image/desert.png',
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: _screenheight * 0.11,
                  width: _screenwidth - 30,
                  color: colorLightBrown,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/review.png',
                        width: 20,
                        height: 20,
                      ),
                      Text(
                        "리뷰하기",
                        style: GmarketSans12,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: _screenheight * 0.22,
                      width: _screenwidth / 2 - 30,
                      color: const Color(0xffFFEFB5),
                    ),
                    Container(
                      height: _screenheight * 0.22,
                      width: _screenwidth / 2 - 30,
                      color: const Color(0xffDBFFBE),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}