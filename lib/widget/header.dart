import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper_class/controller_helper.dart';

Widget header(String name , Size size , BuildContext context ,bool select){
  return
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only( left:name == "Home"?size.width* 0  : size.width* 0.015,),
          child: TextButton(onPressed: (){},
              child: context.text(text: "$name", size:  size.width* 0.013, color: select == true ? (0xFFa1c0bf) :  context.whiteColor,
                  wieght: FontWeight.w300)),
        ),
        CircleAvatar(
          backgroundColor: select == true ? Color(0xFFa1c0bf) : Colors.transparent ,
          radius: 30.r,
        )
      ],);
}
