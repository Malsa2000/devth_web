import 'package:flutter/material.dart';
Widget socialIcon(String image ,Size size){
  return

    Row(
    children: [
      Padding(
        padding: EdgeInsets.only(left: size.width* 0.006),
        child: Image(
            image: AssetImage("images/$image.png"),
            height:size.width > 750? size.height * 0.035:size.height*0.017,
            width:size.height > 750? size.height * 0.025:size.width*0.012),
      ),

    ],
  ) ;
}
