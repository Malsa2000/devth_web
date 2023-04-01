import 'package:deevth/widget/title.dart';
import 'package:flutter/material.dart';
import '../helper_class/controller_helper.dart';
import '../helper_class/string.dart';
import '../widget/image_contaner.dart';
import '../widget/socai_icon.dart';
class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
    children: [
    Image( image:const AssetImage("images/background_co.png"),width: size.width,),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: size.height*0.02,),
        conteainerTitle(AllText.about_us, size, context, 0.35,0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          ImageController(size ,context ,0.1 ,size.width>500?0.15 :0.08,0),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left :size.width*0.05 ,top:size.width>500? size.height*0.16: size.height*0.08),
                width: size.width * 0.38,
                alignment: Alignment.centerLeft,
                child:context.text(text: AllText.about_us_menu, size: size.width* 0.02,align: TextAlign.start,
                    color: context.mainColor,wieght: FontWeight.w600),

              ),
                 SizedBox(height:size.width>500?size.height *0.03 :size.height *0.015,),
                 Container(
                 margin: EdgeInsets.only(left: size.width * 0.05,
                 top: size.height * 0.01),
                 width: size.width * 0.4,
                 alignment: Alignment.centerLeft,
                child:context.text(text: AllText.aboutUsText
                    , size: size.width*0.01, color: context.mainColor ,align: TextAlign.start),
              ),
            ],)
        ],),

        ImageController(size ,context ,0.2 ,size.width > 600 ?0.1 : 0.05,0),
        Container(
            margin: EdgeInsets.only(left: size.width * 0.23,top:size.width > 500 ?size.height * 0.12 :size.height * 0.05),
            alignment: Alignment.center,
            height: size.width > 500 ?size.height * 0.13 :size.height * 0.07,
            width:size.width * 0.54,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(size.width*0.5)),
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
            child: context.text(text: AllText.aboutUsText3, size: size.width*0.021, color: context.whiteColor ,wieght: FontWeight.w400)
        ),
        Container(
          margin: EdgeInsets.only(top:size.width > 500 ? size.height*0.06:size.height*0.03 ,
              right: size.width*0.25 ,left: size.width*0.25 ),
          child: Column(
            children: [
              Text(
                AllText.aboutUsText4,
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color:const Color(0xFF3b4d5b),
                    fontSize: size.width*0.011
                ),
              ),
              SizedBox(height:size.width > 500 ? size.height * 0.07:size.height*0.035,),
              Text(
                'Contact us:',
                style: TextStyle(
                    color: const Color(0xFF3b4d5b),
                    fontSize: size.width*0.022,
                    fontWeight: FontWeight.w600

                ),
              ),
              SizedBox(height: size.height * 0.005,),
              context.text(text: AllText.aboutUsText5, size: size.width*0.011, color: (0xFF3b4d5b),)
            ],),
        ),
        Container(
          width: size.width,

          height:size.width > 500 ? size.height * 0.55 :size.height * 0.25,
          alignment: Alignment.center,
          padding: EdgeInsets.only(top:size.width > 500? size.height*0.15 :size.height *0.07,
              bottom:size.width > 500?   size.height*0.05 :size.height* 0),
          decoration: const BoxDecoration(
            image:  DecorationImage(image: AssetImage("images/back_tile.PNG") ,fit: BoxFit.fill),
          ),
          child: Column(
            children: [
              context.text(text: AllText.aboutUsText7, size: size.width*0.01,
                  color: (0xFFf0eee4),wieght: FontWeight.w300,fontStyle: FontStyle.italic),
              context.text(text: AllText.aboutUsText6,fontStyle: FontStyle.italic,
                  size: size.width*0.01, color: (0xFFf0eee4),wieght: FontWeight.w300),
              SizedBox(height:size.width > 500 ? size.height* 0.02:size.height*0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  socialIcon("facebook" ,size),
                  socialIcon("twitter" ,size),
                  socialIcon("youtupe" ,size),
                  socialIcon("linkedin" ,size),
                  socialIcon("snap" ,size),
                  socialIcon("p" ,size),
                  socialIcon("insta" ,size),
                  socialIcon("tiktok" ,size),

                ],),
              SizedBox(height:size.width > 500 ? size.height* 0.02:size.height*0.01),
              context.text(text: AllText.home, size: size.width*0.011, color: (0xFFf0eee4),wieght: FontWeight.w400),
              SizedBox(height:size.width > 500 ? size.height* 0.02:size.height*0.01),
              context.text(text: AllText.whoAreMenu, size: size.width*0.011, color: (0xFFf0eee4),wieght: FontWeight.w400) ,
              SizedBox(height:size.width > 500 ? size.height* 0.02:size.height*0.01),
              context.text(text: AllText.serviceMenu, size: size.width*0.011, color: (0xFFf0eee4),wieght: FontWeight.w400),
              SizedBox(height:size.width > 500 ? size.height* 0.02:size.height*0.01),
              context.text(text: AllText.about_us_menu, size: size.width*0.011, color: (0xFFf0eee4),wieght: FontWeight.w400),

            ],
          ),
        )
      ],),
      ],
    );
  }

}
