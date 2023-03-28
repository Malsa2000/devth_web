import 'package:deevth/helper_class/controller_helper.dart';
import 'package:deevth/helper_class/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AboutUsApp extends StatelessWidget {
  const AboutUsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
        const  Image( image: AssetImage("images/background_co.png"),width: double.infinity),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 250.w  ),
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
                      context.text(text: AllText.about_us, size:48.sp, color: (0xFFFFFFFF) ,wieght: FontWeight.w500 ,
                          fontStyle: FontStyle.italic)

                    ],
                  ),
                )
                ,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                  margin: EdgeInsets.only(left: 250.w,top: 150.h,right: 80.w),
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
                )   ,
                 Container(
    margin: EdgeInsets.only(top: 170.h),
    width: 600.w,
    alignment: Alignment.centerLeft,
    child:
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        context.text(text: AllText.about_us_menu,
            size:36.sp,align: TextAlign.start,
            color: context.mainColor,wieght: FontWeight.w600),
             SizedBox(height: 30.h,),
        context.text(text: AllText.aboutUsText
            , size:18.sp, color: context.mainColor ,align: TextAlign.start),

      ],)),

              ],),
              Container(
    margin: EdgeInsets.only(left: 400.w,top: 100.h ),
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

    )   ,
              Container(
                  margin: EdgeInsets.only(left: 409.w,top:150.h),
                  alignment: Alignment.center,
                  height: 125.h,
                  width:1104.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(117.r)),
                      boxShadow:const [BoxShadow(color: Colors.black26 ,blurRadius: 2 ,offset: Offset(3,3))],
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(context.mainColor),
                            Color(context.babyBlue),
                            Color(context.mainColor),

                          ]
                      )
                  ),
                  child: context.text(text: AllText.aboutUsText3, size: 36.sp,
                      color: context.whiteColor ,wieght: FontWeight.w600)
              ),
              Container(
                margin: EdgeInsets.only(top:50.h ,left: 550.w ),
                child: Column(
                  children: [
                    Text(
                      AllText.aboutUsText4,
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color:const Color(0xFF3b4d5b),
                          fontSize: 18.sp
                      ),
                    ),
                    SizedBox(height: 70.h),
                    Text(
                      'Contact us:',
                      style: TextStyle(
                          color: const Color(0xFF3b4d5b),
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    context.text(text: AllText.aboutUsText5, size: 18.sp, color: (0xFF3b4d5b),)
                  ],),
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 30.h),
                padding: EdgeInsets.only(top: 180.h ,bottom: 100.h),
                decoration: const BoxDecoration(
                  image:  DecorationImage(image: AssetImage("images/tile_back.png") ,fit: BoxFit.fill),
                ),
                child: Column(
                  children: [
                    context.text(text: AllText.aboutUsText7, size: 18.sp,
                        color: (0xFFf0eee4),wieght: FontWeight.w200,fontStyle: FontStyle.italic),
                    context.text(text: AllText.aboutUsText6,fontStyle: FontStyle.italic,
                        size: 18.sp, color: (0xFFf0eee4),wieght: FontWeight.w200),
                    SizedBox(height: 60.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 50.w),
                              child: Image(
                                  image:const AssetImage("images/facebook.png"),
                                  height: 27.h,
                                  width: 22.w),
                            ),],),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 50.w),
                              child: Image(
                                  image:const AssetImage("images/twitter.png"),
                                  height: 27.h,
                                  width: 22.w),
                            ),],),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 50.w),
                              child: Image(
                                  image:const AssetImage("images/youtupe.png"),
                                  height: 27.h,
                                  width: 22.w),
                            ),],),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 50.w),
                              child: Image(
                                  image:const AssetImage("images/linkedin.png"),
                                  height: 27.h,
                                  width: 22.w),
                            ),],),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 50.w),
                              child: Image(
                                  image:const AssetImage("images/snap.png"),
                                  height: 27.h,
                                  width: 22.w),
                            ),],),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 50.w),
                              child: Image(
                                  image:const AssetImage("images/p.png"),
                                  height: 27.h,
                                  width: 22.w),
                            ),],),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 50.w),
                              child: Image(
                                  image:const AssetImage("images/insta.png"),
                                  height: 27.h,
                                  width: 22.w),
                            ),],),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 50.w),
                              child: Image(
                                  image:const AssetImage("images/tiktok.png"),
                                  height: 27.h,
                                  width: 22.w),
                            ),],),
                      ],),
                    SizedBox(height:40.h),
                    context.text(text: AllText.home, size: 18.sp, color: (0xFFf0eee4),wieght: FontWeight.w200),
                    SizedBox(height:30.h),
                    context.text(text: AllText.whoAreMenu, size: 18.sp, color: (0xFFf0eee4),wieght: FontWeight.w200) ,
                    SizedBox(height: 30.h),
                    context.text(text: AllText.serviceMenu, size: 18.sp, color: (0xFFf0eee4),wieght: FontWeight.w200),
                    SizedBox(height: 30.h),
                    context.text(text: AllText.about_us_menu, size: 18.sp, color: (0xFFf0eee4),wieght: FontWeight.w200),

                  ],
                ),
              )
            ],),
        ],
      ),
    );
  }
}
