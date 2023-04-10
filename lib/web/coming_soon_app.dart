import 'package:deevth/app/home.dart';
import 'package:deevth/check_paltform.dart';
import 'package:deevth/helper_class/controller_helper.dart';
import 'package:deevth/helper_class/string.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CommingSoon extends StatelessWidget {
  const CommingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height:size.height > 900 ? size.height*0.3: size.height*0.2,),
            Image(
                width:size.height > 900 ?size.width * 0.5:size.width * 0.08 ,
                fit: BoxFit.contain,
                image: const AssetImage("images/logo.png")),
            context.text(text: AllText.deevth, size:size.height > 900 ? size.height*0.05:size.height*0.025,
                color: context.mainColor,wieght: FontWeight.w200,fontStyle: FontStyle.italic),
            context.text(text: "Comming Soon!", size:size.height > 900 ? size.height*0.07:size.height*0.035, color: context.mainColor,wieght: FontWeight.w400) ,
            SizedBox(height:size.width>900 ?  size.height*0.03: size.height*0.015,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Enter Your Email!",
                hintStyle: TextStyle(
                    color: Color(context.mainColor) , fontSize:size.width>900 ?  size.height*0.02:size.height*0.01 ),
                constraints: BoxConstraints(
                  maxWidth: size.width*0.35,
                    maxHeight:size.width>900 ? size.height*0.09 :size.height*0.045,
                minHeight:size.width>900 ? size.height*0.08 :size.height*0.04
                    ,minWidth: size.width*0.01),
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
            SizedBox(height:size.width>900 ?  size.height*0.01: size.height*0.005,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Enter Your Password!",
                hintStyle: TextStyle(
                    color: Color(context.mainColor) , fontSize:size.width>900 ?  size.height*0.02:size.height*0.01 ),
                constraints: BoxConstraints(
                    maxWidth: size.width*0.35,
                    maxHeight:size.width>900 ? size.height*0.09 :size.height*0.045,
                    minHeight:size.width>900 ? size.height*0.08 :size.height*0.04
                    ,minWidth: size.width*0.01),
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
            SizedBox(height:size.width>900 ? size.height*0.03:size.height*0.015,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary:  Color(context.mainColor),
                  minimumSize: Size(size.width*0.35
                      ,size.width>900 ?size.height*0.08:size.height*0.05),
                  elevation: 2,
                  alignment: AlignmentDirectional.center,
                  padding:  EdgeInsets.symmetric(horizontal: size.height*0.005),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (contex)=>  Home()));
                },
                child: Text(
                  "LogIn",style: GoogleFonts.jost(color: Color(context.textColor),fontSize:size.width>900 ?
                size.height*0.035:size.height*0.017 ),

                )),
          ],
        ),
      ),
    );
  }
}
