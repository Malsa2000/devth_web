
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension ControllerHelp on BuildContext{

 void snackBar({required String massage , bool error =false}){
   ScaffoldMessenger.of(this).showSnackBar(
     SnackBar(content: Text(massage ,style: GoogleFonts.tajawal(fontSize: 16 )),
       backgroundColor:error == true ? Color(0xFFF6041D) :Color(0xFF0B9109),
       elevation: 2,
       duration: Duration(seconds: 2),),
   );
   }

 int get mainColor{
   return (0xFF1e2a36);
 }
 int get babyBlue{
   return (0xFF3a4c5a);
 }
 int get textColor{
   return (0xFFcbc8b9);
 }
 int get whiteColor{
   return (0xFFFFFFFF);
 }

 int get blackColor{
   return (0xFF000000);
 }
 int get grayColor{
   return (0xFFefede3);
 }

  text( {required String text ,required double size ,
    required int color ,FontWeight wieght = FontWeight.normal ,
    TextAlign align = TextAlign.center , FontStyle fontStyle: FontStyle.normal,}){
  return Text(

      text ,style :GoogleFonts.arimo(fontSize :size ,fontWeight: wieght ,fontStyle: fontStyle,
      color : Color(color) ,height:1.3) ,textAlign: align, );
  //Arimo
  }
}