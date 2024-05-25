import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({
    super.key,
    required this.height,
    required this.width,
    required this.children,
  });
  // width = MediaQuery.of(context).size.width
  final double height, width;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: height,
        autoPlay: true,
      ),
      items: children.map((child) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: child);
          },
        );
      }).toList(),
    );
  }
}
