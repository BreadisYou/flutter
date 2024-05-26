import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;



import '../constant/colors.dart';

import 'dart:async';

class StoreIntro extends StatefulWidget {
  const StoreIntro({super.key});

  @override
  State<StoreIntro> createState() => _StoreIntroState();
}

class _StoreIntroState extends State<StoreIntro> {

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

    return SafeArea(
      child: Scaffold(
        backgroundColor: greyColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            title: Text(
              "민석이네 빵집",
              style: TextStyle(
                fontFamily: "GmarketSans",
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
          ),
        ),
        body: Container(
          height: _screenheight,
          width: _screenwidth,
          child: Column(
            children: [
              Container(
                height: _screenwidth,
                width: _screenwidth,
                child: InteractiveViewer(
                  constrained: true,
                  boundaryMargin: EdgeInsets.all(20),
                  minScale: 1.0,
                  maxScale: 4.0,
                  child: Image.asset(
                    'assets/image/Group_14.png',
                    width: _screenwidth,
                    height: _screenwidth,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: _screenwidth,
                height: _screenheight - _screenwidth - 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 16,),
                            Icon(Icons.star,
                              color: Colors.yellow,
                              size: 50.0,),
                            Text("4.87 / 5.00",
                              style: TextStyle(
                                fontFamily: "GmarketSans",
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 48,),
                            Text("리뷰 144개",
                              style: TextStyle(
                                fontFamily: "GmarketSans",
                                color: const Color(0xff878787),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 12,),
                            Image.asset(
                              'assets/image/local.png',
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(width: 10,),
                            Text("대전광역시 유성구 대학로 99 기숙사 11동 402호",
                              style: TextStyle(
                                fontFamily: "GmarketSans",
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16,),
                        Row(
                          children: [
                            SizedBox(width: 12,),
                            Image.asset(
                              'assets/image/time.png',
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(width: 10,),
                            Text("영업중, 00:00 ~ 24:00",
                              style: TextStyle(
                                fontFamily: "GmarketSans",
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12,),
                        Row(
                          children: [
                            SizedBox(width: 16,),
                            Image.asset(
                              'assets/image/tel.png',
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(width: 10,),
                            Text("010 - 3982 - 4697",
                              style: TextStyle(
                                fontFamily: "GmarketSans",
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 0,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
