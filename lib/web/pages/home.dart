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
      backgroundColor: Colors.white,
      drawer: Drawer(
          elevation: 8,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 200.h,left: 50.w),
                margin: EdgeInsets.only(bottom: 150.h),
                width: double.infinity,
                height: 900.h,
                color: Color(context.mainColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Image(image: const AssetImage("images/logo.png")
                    ,width: 300.w,height: 250.h,),
               SizedBox(height: 50.h,)
               ,context.text(text: "Deevth", size: 75.sp, color: context.textColor),
               context.text(text: "info@deevth.com", size: 50.sp, color: context.textColor),
                ],),
              ),
              TextButton(onPressed: (){
                //Navigator.pop(context);
              }, child: context.text(
                color: context.mainColor,
                text: AllText.home,
                wieght: FontWeight.w900,
                size: 50.sp, )),
              const Divider(),
              TextButton(onPressed: (){
                Navigator.pop(context);

              }, child: context.text(text: AllText.serviceMenu,
                color: context.mainColor,
                wieght: FontWeight.w900,
                size: 50.sp, )),
              const Divider(),
              TextButton(onPressed: (){    Navigator.pop(context);
              }, child: context.text(text: AllText.about_us_menu,
                color: context.mainColor,
                wieght: FontWeight.w900,
                size: 50.sp, )),
              const Divider(),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: context.text(text: AllText.contact,
                color: context.mainColor,
                wieght: FontWeight.w900,
                size: 50.sp, )),
              const Divider(),

            ],)
      ),
      appBar: AppBar(
        backgroundColor: Color(context.mainColor),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Image(
            //     height:80.h,
            //     width: 90.w,
            //     image: const AssetImage("images/logo.png"),fit: BoxFit.contain),
            context.text(text: AllText.deevth, size: 60.sp, color: context.textColor,
                wieght: FontWeight.w300 ,fontStyle: FontStyle.italic),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 20.h),
        children: [
          Home1(),
          Container(
            margin: EdgeInsets.only(left: 700.w ,right: 430.w,top:30.h),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(60.r)),
              color:const Color(0xFF3a4c5a),
            ),
            height:130.h,
            width:700.w,
            child: Container(
              alignment: Alignment.center,
              height:130.h,
              width:567.w,
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
                  context.text(text: "Deevth | ", size: 38.sp, color: (0xFFcbc8b9),
                  wieght: FontWeight.w300,
                      fontStyle: FontStyle.italic),
                  context.text( text: AllText.whoAreTitle, size:40.sp, color: (context.textColor)
                   ,wieght: FontWeight.w400 ,
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
                    size: 45.sp, color: (0xFF3b4d5b),align: TextAlign.start ,wieght: FontWeight.w600),
                SizedBox(height:50.h),
                context.text(text:AllText.whoArePhrgraph,
                    size: 25.sp, color: (0xFF3b4d5b),align: TextAlign.start )
              ],),
          ),
          OurServesApp(),
          AboutUsApp(),
          Container(
            padding: EdgeInsets.only(bottom: 20.h ),
            height: 120.h,
            width: double.infinity,
            alignment: Alignment.center,
            child: context.text(text: AllText.bottomText, size: 25.sp, color: (0xFF3b4d5b)),
          )

        ],
      ),
    );
  }
}
