import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sogra/constant/font.dart';
import 'package:sogra/widget/reviewDialog.dart';

import 'mapdialog.dart';

class ReviewCardMap extends StatelessWidget {
  const ReviewCardMap({
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

    void _showMapDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return MapDialog();
        },
      );
    }

    return GestureDetector(
      onTap: () {
        _showMapDialog(context);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 4.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 70,
              height: 70,
              child: image,
            ),
            Text(
              '$store - $name',
              style: GmarketSans12,
            ),
            SizedBox(width: 50,),
          ],
        ),
      ),
    );
  }
}
