import 'package:deevth/helper_class/controller_helper.dart';
import 'package:flutter/material.dart';
Widget conteainerTitle(String title ,Size size ,BuildContext context , double marginLeft ,double marginRight){
  return Container(
    margin: EdgeInsets.only(left: size.width*marginLeft  , right: size.width*marginRight),
    alignment: Alignment.centerLeft,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(size.width * 0.5)),
      color: Color(0xFF3a4c5a),

    ),
    height: size.height * 0.13,
    width:size.width * 0.38,
    child: Container(
      alignment: Alignment.center,
      height: size.height * 0.13,
      width:size.width * 0.31,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(size.width*0.5)),
          boxShadow:const [BoxShadow(color: Colors.black26 ,blurRadius: 2 ,offset: Offset(3,3))],
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFF3a4c5a),
                Color(0xFF1e2a36),

              ]
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage("images/logo.png"),
            width: size.width* 0.03,
            height: size.height * 0.04,
          ),
          context.text(text: "Deevth  |", size: size.width * 0.025, color: (0xFFcbc8b9),wieght: FontWeight.w300),
          context.text(text: "$title", size: size.width * 0.025, color: (0xFFFFFFFF) ,wieght: FontWeight.w400)

        ],
      ),
    )
    ,);
}
