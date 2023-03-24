
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helper_class/controller_helper.dart';
import '../helper_class/string.dart';
import '../pages/about_us.dart';
import '../pages/home2.dart';
import '../pages/our_servises.dart';
import '../widget/header.dart';
import '../widget/image_contaner.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);
       bool select = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
     body: ListView(
        children: [
          Container(
           margin: EdgeInsets.only(bottom:size.width > 500 ? size.height * 0.018 :size.height* 0.009,
               top:size.width > 500 ?  size.height * 0.005 :size.height *0.002),
            padding: EdgeInsets.symmetric(horizontal:  size.width * 0.012),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(context.mainColor),
                  Color(context.babyBlue)
                ]
              )
            ),
            height:size.width > 500 ? size.height * 0.13 : size.height*0.07,
            width: size.width,
            child:
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Image(
                 height:size.height > 500? size.height * 0.045 :size.height*0.022,
                   width:size.width > 500? size.width * 0.055 :size.width*0.025,
                   image:const AssetImage("images/logo.png"),fit: BoxFit.contain),
                context.text(text: AllText.deevth, size:  size.width* 0.019, color: context.textColor,
                    wieght: FontWeight.w100 ,fontStyle: FontStyle.italic),
               const Spacer(),
                header(AllText.home,size ,context ,select),
                header(AllText.serviceMenu,size ,context ,false),
                header(AllText.about_us_menu,size ,context ,false),
                header(AllText.contact,size ,context ,false),
                const Spacer(),
                InkWell(
                  child:  Image(image: AssetImage('images/menu.png'),
                  height:size.height > 500? size.height*0.03 :size.height*0.015,
                    width: size.width > 500 ? size.width * 0.05 :size.width*0.02,

                  ) ,
                )
              ],),
          ),
          Stack(
            children: [
              Image(
                width: size.width,
                  height :size.width > 500 ? size.height * 0.85 :size.height*0.42,
                  fit: BoxFit.fill,
                  image: const AssetImage("images/back.png")),
              Positioned(
                top :size.height > 500 ?size.height *0.03 :size.height*0.01,
                left: size.width *0.15,
                right: size.width *0.15,
                child: Container(
                margin: EdgeInsets.symmetric(vertical:size.width > 500 ? size.height * 0.15:size.height*0.05  ),
                alignment: Alignment.center,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    TextButton(
                      onPressed: (){}, child: context.text(text: "<", size: size.width*0.05, color:  (0xFF62707b)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(image:const AssetImage("images/logo.png"),
                          fit: BoxFit.contain,
                          height:size.width > 500 ?size.height * 0.17 :size.height*0.08,
                          width:size.width > 500 ? size.width * 0.17 :size.width*0.08,),
                        SizedBox(height: size.height * 0.03,),
                        context.text(text: AllText.design, size: size.width* 0.02, color: context.whiteColor,
                            fontStyle: FontStyle.italic ,wieght: FontWeight.w100)
                      ],),
                       TextButton(onPressed: (){}, child: context.text(text: ">",  size: size.width*0.05, color:  (0xFF62707b),
                       ),)

                  ],),
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: size.width* 0.1 ,top: size.width > 500 ?size.height*0.86 :size.height*0.4),
                    width: size.width * 0.41,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //title
                        context.text(text:  AllText.design2, size: size.width* 0.02, color: (0xFF4e5e6c),
                            align: TextAlign.start, wieght: FontWeight.w600),
                        SizedBox(height: size.height * 0.02),
                        //description
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            context.text(text:  AllText.whoAreText2,wieght: FontWeight.w500,
                                size: size.width* 0.011, color: (0xFF4e5e6c),align: TextAlign.start),
                            SizedBox(height: size.height * 0.013),

                            context.text(text:  AllText.whoAreText,
                                size: size.width* 0.01, color:(0xFF4e5e6c),align: TextAlign.start),


                          ],)


                      ],),
                  ),
                  ImageController(size ,context ,0 ,size.width > 500 ? 0.7:0.33,0.07),

                ],
              ),
            ],
          ),
          Home2(),
          OurServesis(),
          AboutUs(),
          Container(
            padding: EdgeInsets.only(bottom: size.height * 0.01 ),
            height:size.height > 500 ? size.height * 0.05 :size.height*0.025,
            width: size.width,
            alignment: Alignment.center,
            child: context.text(text: AllText.bottomText,
                size:size.width > 500 ? size.height * 0.02 :size.height*0.01,
                color: (0xFF3b4d5b)),
          )
        ],
      ),
    );
  }
}
