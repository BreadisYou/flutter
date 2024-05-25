import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sogra/common/logo.dart';
import 'package:sogra/constant/colors.dart';
import 'package:sogra/constant/font.dart';
import 'package:sogra/main.dart';
import 'package:sogra/widget/image_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      backgroundColor: colorApricot,
      body: SafeArea(
        child: Container(
          color: colorApricot,
          height: _screenheight,
          width: _screenwidth,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            child: Column(
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
                Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        height: _screenheight * 0.33,
                        width: _screenwidth - 20,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        width: _screenwidth - 20,
                        height: _screenheight * 0.07,
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
                    ElevatedButton(
                      onPressed: onPressed,
                      child: Image.asset(
                        'assets/desert.png',
                        width: 100,
                        height: 100,
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