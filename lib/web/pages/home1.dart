import 'package:deevth/helper_class/controller_helper.dart';
import 'package:deevth/helper_class/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Home1 extends StatelessWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Stack(children: [

        Image(
         height: 1345.h,
         width: double.infinity,
         image:const AssetImage("images/back_h.png" ),fit: BoxFit.fill,),
        Positioned(
          top: 250.h,
          right: 300.w,
          left: 300.w,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){}, child: context.text(text: "<", size: 40.sp, color:  (0xFF62707b)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  height: 162.h,
                  width: 186.w,
                  image: const AssetImage("images/logo.png" ),fit: BoxFit.contain,),
                SizedBox(height: 20.h,),
                context.text(text: AllText.design, size: 36.sp, color: context.whiteColor,
                    fontStyle: FontStyle.italic ,wieght: FontWeight.w100)
              ],
            ),

            TextButton(
              onPressed: (){}, child: context.text(text: ">", size: 40.sp, color:  (0xFF62707b)),
            ),
          ],)
          ,),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left:250.w  ,top:1002.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //title
                  context.text(text:  AllText.design2, size: 36.sp, color: (0xFF4e5e6c),
                      align: TextAlign.start, wieght: FontWeight.w600),
                  SizedBox(height: 70.h),
                  //description
                  context.text(text:  AllText.whoAreText2,
                      size: 18.sp, color: (0xFF4e5e6c),align: TextAlign.start),
                  SizedBox(height: 20.h),

                  context.text(text:  AllText.whoAreText,
                      size: 18.sp, color:(0xFF4e5e6c),align: TextAlign.start),

                ],),
            ),
            Container(
              margin: EdgeInsets.only(left: 125.w,top:774.h ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: const  DecorationImage(image: AssetImage("images/image1.png")),
                  borderRadius: BorderRadius.circular(60.r),
                  color: Color(context.mainColor),
                  boxShadow:const [
                    BoxShadow(color: Colors.black26 ,blurRadius: 3 ,offset: Offset(3, 4))
                  ]
              ),
              width: 681.w,
              height: 455.h,

            )
          ],
        ),
      ],
    )

    );
  }
}
