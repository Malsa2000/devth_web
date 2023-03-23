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
        Row(children: [
          ImageController(size ,context ,0.1 ,0,0),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.14 ,left :size.width*0.05),
                width: size.width * 0.38,
                alignment: Alignment.centerLeft,
                child:context.text(text: AllText.about_us_menu, size: size.width* 0.02,align: TextAlign.start,
                    color: context.mainColor,wieght: FontWeight.w600),

              ),
              SizedBox(height:size.height *0.03,),
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
        ImageController(size ,context ,0.2 ,0.1,0),
        Container(
            margin: EdgeInsets.only(left: size.width * 0.23,top:size.height * 0.12 ),
            alignment: Alignment.center,
            height: size.height * 0.13,
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
          margin: EdgeInsets.only(top: size.height*0.06 ,right: size.width*0.25 ,left: size.width*0.25 ),
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
              SizedBox(height: size.height * 0.07,),
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
        Stack(
          children: [
            Container(
              width: size.width,
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: size.height*0.15 ,bottom:  size.height*0.05),
              decoration: const BoxDecoration(
               // image:  DecorationImage(image: AssetImage("images/tile_back.png") ,fit: BoxFit.cover),
                image: DecorationImage(
                  image: AssetImage("images/back_tile.png") ,
                  fit: BoxFit.cover,
                ),
                //color: Colors.black,
              ),
              child: Column(
                children: [
                  context.text(text: AllText.aboutUsText7, size: size.width*0.01,
                      color: (0xFFf0eee4),wieght: FontWeight.w100,fontStyle: FontStyle.italic),
                  context.text(text: AllText.aboutUsText6,fontStyle: FontStyle.italic,
                      size: size.width*0.01, color: (0xFFf0eee4),wieght: FontWeight.w100),
                  SizedBox(height: size.height* 0.02,),
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
                  SizedBox(height: size.height* 0.02,),
                  context.text(text: AllText.home, size: size.width*0.011, color: (0xFFf0eee4),wieght: FontWeight.w200),
                  SizedBox(height: size.height* 0.02,),
                  context.text(text: AllText.whoAreMenu, size: size.width*0.011, color: (0xFFf0eee4),wieght: FontWeight.w200) ,
                  SizedBox(height: size.height* 0.02,),
                  context.text(text: AllText.serviceMenu, size: size.width*0.011, color: (0xFFf0eee4),wieght: FontWeight.w200),
                  SizedBox(height: size.height* 0.02,),
                  context.text(text: AllText.about_us_menu, size: size.width*0.011, color: (0xFFf0eee4),wieght: FontWeight.w200),

                ],
              ),
            ),
          ],
        )
      ],),
      ],
    );
  }

}
