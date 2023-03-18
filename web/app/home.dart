
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
     body:
      ListView(
        children: [
          Container(
           margin: EdgeInsets.only(bottom: 12.h ,top:  size.height * 0.005),
            padding: EdgeInsets.symmetric(horizontal:  size.width * 0.01),
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
            height: size.height * 0.1,
            width: size.width,
            child:
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Image(
                 height: size.height * 0.03,
                   width: size.width * 0.04,
                   image: AssetImage("images/logo.png"),fit: BoxFit.contain),
                context.text(text: AllText.deevth, size:  size.width* 0.019, color: context.textColor,
                    wieght: FontWeight.w200 ,fontStyle: FontStyle.italic),
               const Spacer(),
                header(AllText.home,size ,context ,select),
                header(AllText.service,size ,context ,false),
                header(AllText.about_us,size ,context ,false),
                header(AllText.contact,size ,context ,false),
                const Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.menu ,size:size.width*0.03,
                  color:const Color(0xFFcbc8b9),))
              ],),
          ),
          Stack(
            children: [
              Image(
                width: size.width,
                  height : size.height * 0.85,
                  fit: BoxFit.cover,
                  image: const AssetImage("images/back.png")),
              Positioned(
                top :size.height *0.03,
                left: size.width *0.15,
                right: size.width *0.15,
                child: Container(
                margin: EdgeInsets.symmetric(vertical: size.height * 0.15  ),
                alignment: Alignment.center,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    TextButton(
                      onPressed: (){}, child: context.text(text: "<", size: size.width*0.07, color:  (0xFF62707b)),
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("images/logo.png"),
                          fit: BoxFit.fitHeight,
                          height:size.height * 0.17,
                          width: size.width * 0.17,),
                        SizedBox(height: size.height * 0.03,),
                        context.text(text: AllText.design, size: size.width* 0.025, color: context.whiteColor,
                            fontStyle: FontStyle.italic)
                      ],),
                       TextButton(onPressed: (){}, child: context.text(text: ">",  size: size.width*0.07, color:  (0xFF62707b),
                       ),)

                  ],),
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ImageController(size ,context ,0 ,0.7,0.07),

                ],
              ),
             Positioned(
               top: size.height * 0.83,
               child: Container(
                 margin: EdgeInsets.only(left: size.width* 0.08 ),
                 width: size.width * 0.41,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     //title
                     context.text(text:  AllText.design2, size: size.width* 0.022, color: (0xFF4e5e6c),
                         align: TextAlign.start, wieght: FontWeight.w600),
                     SizedBox(height: size.height * 0.02),
                     //description
                     Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                       context.text(text:  AllText.whoAreText,
                           size: size.width* 0.01, color:(0xFF4e5e6c),align: TextAlign.start),
                       SizedBox(height: size.height * 0.013),
                       context.text(text:  AllText.whoAreText2,
                           size: size.width* 0.01, color: (0xFF4e5e6c),align: TextAlign.start),
                     ],)


                   ],),
               ),

             )

            ],
          ),
          Home2(),
          OurServesis(),
          AboutUs(),
          Container(
            padding: EdgeInsets.only(bottom: size.height * 0.01 ),
            height: size.height * 0.05,
            width: size.width,
            alignment: Alignment.center,
            child: context.text(text: AllText.bottomText, size: size.height * 0.02, color: (0xFF3b4d5b)),
          )
        ],
      ),
    );
  }
}
