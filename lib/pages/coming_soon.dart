import 'package:deevth/check_paltform.dart';
import 'package:deevth/helper_class/controller_helper.dart';
import 'package:deevth/helper_class/string.dart';
import 'package:deevth/web/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class CommingSoonApp extends StatelessWidget {
  const CommingSoonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height:150.h,),
            Image(
                width:150.w,
                height :200.h,
                fit: BoxFit.fill,
                image: const AssetImage("images/logo.png")),
            SizedBox(height: 30.h,),
            context.text(text: AllText.deevth, size:45.sp, color: context.mainColor,wieght: FontWeight.w300,fontStyle: FontStyle.italic),
            context.text(text: "Comming Soon!", size:50.sp, color: context.mainColor,wieght: FontWeight.w400) ,
            SizedBox(height: 60.h,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Enter Your Email!",
                hintStyle: TextStyle(
                    color: Color(context.mainColor) , fontSize:50.sp ),
                constraints: BoxConstraints(
                  maxWidth:700.w,
                    maxHeight: 200.h,
                    minHeight: 100.h
                    ,minWidth: 700.w ),
                errorBorder:const OutlineInputBorder(
                  borderSide:  BorderSide(color: Colors.red, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.15, color: Color(context.mainColor)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFD0D6E0), width: 1.0),
                ),
              ),
              enabled: true,
            ),
            SizedBox(height:40.h,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Enter Your Password!",
                hintStyle: TextStyle(
                    color: Color(context.mainColor) ,fontSize: 50.sp ),
                constraints: BoxConstraints(
                    maxWidth: 700.w,
                    maxHeight: 200.h,
                    minHeight:100.h
                    ,minWidth: 700.w),
                errorBorder:const OutlineInputBorder(
                  borderSide:  BorderSide(color: Colors.red, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.15, color: Color(context.mainColor)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFD0D6E0), width: 1.0),
                ),
              ),
              enabled: true,
            ),
            SizedBox(height: 70.h,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary:  Color(context.mainColor),
                  minimumSize: Size(700.w ,
                      200.h),
                  elevation: 2,
                  alignment: AlignmentDirectional.center,
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (contex)=> const HomeApp()));
                },
                child: Text(
                  "LogIn",style: GoogleFonts.jost(color: Color(context.textColor),fontSize: 50.sp),

                )),
          ],
        ),
      ),
    );
  }
}
