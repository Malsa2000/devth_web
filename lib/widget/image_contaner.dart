import 'package:flutter/material.dart';

import '../helper_class/controller_helper.dart';

Widget ImageController( Size size , BuildContext context ,double left ,double top ,double right ){
  return  Container(
    margin: EdgeInsets.only(left: size.width * left,top: size.height * top ,right: size.width * right),
    alignment: Alignment.center,
    decoration: BoxDecoration(
        image: const  DecorationImage(image: AssetImage("images/image1.png")),
        borderRadius: BorderRadius.circular(size.width* 0.04),
        color: Color(context.mainColor),
        boxShadow:const [
          BoxShadow(color: Colors.black26 ,blurRadius: 3 ,offset: Offset(3, 4))
        ]
    ),
    width: size.width * 0.38,
    height: size.width * 0.25,

  );

}
