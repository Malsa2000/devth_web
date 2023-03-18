import 'package:deevth/helper_class/controller_helper.dart';
import 'package:deevth/widget/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(left: size.width* 0.08 ),
      child:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:  size.height * 0.1,),
              conteainerTitle("Who We Are" ,size ,context,0.30 ,0),
              SizedBox(height:  size.height * 0.05,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                context.text(text: "We Are Deevth - A Design Consulting Agency Here To Meet Your Needs",
                    size: size.width* 0.022, color: (0xFF3b4d5b),align: TextAlign.start ,wieght: FontWeight.w600),
                SizedBox(height: size.height *0.02),
                Padding(padding: EdgeInsets.only(right: size.width* 0.13),
                  child: context.text(text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. "
                      "Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor"
                      " in hendrerit in vulputate velit esse molestie ",
                      size: size.width* 0.012, color: (0xFF3b4d5b),align: TextAlign.start )
                )

    ],),



            ],
          )

    );
  }
}
