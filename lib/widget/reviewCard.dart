import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sogra/constant/font.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
    required this.height,
    required this.width,
    required this.image,
    required this.store,
    required this.name,
  });
  final Image image;
  final String store, name;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {}, //TODO ontap 하면 dialog띄우게 해야함
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 4.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: image,
            ),
            Text(
              '$store-$name',
              style: GmarketSans12,
            ),
          ],
        ),
      ),
    );
  }
}
