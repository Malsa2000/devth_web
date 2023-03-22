import 'package:deevth/helper_class/controller_helper.dart';
import 'package:deevth/helper_class/string.dart';
import 'package:deevth/web/pages/about_us_app.dart';
import 'package:deevth/web/pages/home1.dart';
import 'package:deevth/web/pages/servies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(context.mainColor),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
                height:41.h,
                width: 47.w,
                image: const AssetImage("images/logo.png"),fit: BoxFit.contain),
            context.text(text: AllText.deevth, size: 22.sp, color: context.textColor,
                wieght: FontWeight.w100 ,fontStyle: FontStyle.italic),          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top:20.h),
        children: [
          Home1(),
          Container(
            margin: EdgeInsets.only(left: 700.w ,right: 370.w),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(60.r)),
              color:const Color(0xFF3a4c5a),

            ),
            height:126.h,
            width:750.w,
            child: Container(
              alignment: Alignment.center,
              height:126.h,
              width:623.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60.r)),
                  boxShadow:const [BoxShadow(color: Colors.black26 ,blurRadius: 2 ,offset: Offset(3,3))],
                  gradient:const LinearGradient(
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
                    image:const AssetImage("images/logo.png"),
                    width: 58.w,
                    height: 51.h,
                  ),
                  context.text(text: "Deevth  | ", size: 40.sp, color: (0xFFcbc8b9),wieght: FontWeight.w200,
                      fontStyle: FontStyle.italic),
                  context.text(text: AllText.whoAreTitle, size:48.sp, color: (0xFFFFFFFF) ,wieght: FontWeight.w500 ,
                      fontStyle: FontStyle.italic)

                ],
              ),
            )
            ,),
          Container(
            margin: EdgeInsets.only(left: 200.w ,right:200.w ,top: 200.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                context.text(text: AllText.whoAreSubTitle,
                    size: 36.sp, color: (0xFF3b4d5b),align: TextAlign.start ,wieght: FontWeight.w600),
                SizedBox(height:100.h),
                context.text(text:AllText.whoArePhrgraph,
                    size: 18.sp, color: (0xFF3b4d5b),align: TextAlign.start )
              ],),
          ),
          OurServesApp(),
          AboutUsApp(),
          Container(
            padding: EdgeInsets.only(bottom: 20.h ),
            height: 100.h,
            width: double.infinity,
            alignment: Alignment.center,
            child: context.text(text: AllText.bottomText, size: 18.sp, color: (0xFF3b4d5b)),
          )

        ],
      ),
    );
  }
}
