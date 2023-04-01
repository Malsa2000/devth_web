
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension ControllerHelp on BuildContext{

 

 int get mainColor{
   return (0xFF1e2a36);
 }
 int get babyBlue{
   return (0xFF3a4c5a);
 }
 int get textColor{
   return (0xFFf0ede4);
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
      text ,style :GoogleFonts.jost(fontSize :size ,fontWeight: wieght ,fontStyle: fontStyle,
      color : Color(color) ,height:1.2) ,textAlign: align, );
  //Arimo
  //Arial
  }
}