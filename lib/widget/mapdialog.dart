import 'package:flutter/material.dart';
import 'package:sogra/constant/colors.dart';
import 'package:sogra/screen/storeIntro.dart';

import '../common/NoAnimation.dart';

class MapDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: greyColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
            Image.asset(
              'assets/image/bbang.png',
              width: 200,
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 16,),
                Icon(Icons.star,
                  color: Colors.yellow,
                  size: 20.0,),
                Text("4.87 / 5.00",
                  style: TextStyle(
                    fontFamily: "GmarketSans",
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),SizedBox(height: 10,),
            Text("크림소금빵",
              style: TextStyle(
                fontFamily: "GmarketSans",
                color: const Color(0xff000000),
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),Text("민석이네 빵집",
              style: TextStyle(
                fontFamily: "GmarketSans",
                color: const Color(0xff878787),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  NoAnimationRouteBuilder(
                    builder: (context) => StoreIntro(),
                  ),
                );
              },
              child: Container(
                width: 300,
                height: 300,
                child: Image.asset(
                  'assets/image/Group_14.png',
                  fit: BoxFit.fill,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}