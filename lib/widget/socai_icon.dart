import 'package:flutter/material.dart';
Widget socialIcon(String image ,Size size){
  return

    Row(
    children: [
      Padding(
        padding: EdgeInsets.only(left: size.width* 0.006),
        child: Image(
            image: AssetImage("images/$image.png"),
            height: size.height * 0.035,
            width: size.height * 0.025),
      ),

    ],
  ) ;
}
