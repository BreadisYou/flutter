import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sogra/constant/font.dart';
import 'package:sogra/main.dart';

import '../constant/colors.dart';

class ReviewDialog extends StatelessWidget {
  const  ReviewDialog({
    super.key,

    required this.image,
    required this.store,
    required this.name,
    required this.score,
  });
  final Image image;
  final String store, name;
  final double score;

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
            SizedBox(
              width: 100,
              height: 100,
              child: image,
            ),
            Row(
              children: [
                const Icon(Icons.star,
                size: 20,
                ),
                Text(
                  '$score',
                  style: const TextStyle(
                    fontFamily: "GmarketSans",
                    color: greyColor,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Text(
                  '/5.00',
                  style: TextStyle(
                    fontFamily: "GmarketSans",
                    color: greyColor,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            Text(
              '$store',
              style: const TextStyle(
                fontFamily: "GmarketSans",
                color: colorLightBrown,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$name',
              style: const TextStyle(
                fontFamily: "GmarketSans",
                color: colorLightBrown,
                fontSize: 24,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                              "유*석",
                            style: GmarketSans24,
                          ),
                          const Row(
                            children: [
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                            ],
                          )
                        ],
                      ),
                      Text(
                        "정말 맛있습니다",
                        style: GmarketSans12,
                      ),
                    ],
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "김*빈",
                            style: GmarketSans24,
                          ),
                          const Row(
                            children: [
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                            ],
                          )
                        ],
                      ),
                      Text(
                        "ARGOS 회장도 울고갑니다!",
                        style: GmarketSans12,
                      ),
                    ],
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "안*진",
                            style: GmarketSans24,
                          ),
                          const Row(
                            children: [
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                            ],
                          )
                        ],
                      ),
                      Text(
                        "오......!",
                        style: GmarketSans12,
                      ),
                    ],
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
                    Text(
                      "리뷰 작성하기",
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
  }
}
