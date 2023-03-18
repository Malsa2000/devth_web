
import 'package:flutter/material.dart';
import '../helper_class/controller_helper.dart';
import '../helper_class/string.dart';
import '../widget/image_contaner.dart';
import '../widget/socai_icon.dart';
import '../widget/title.dart';
class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      shrinkWrap: true,
      children:[
        conteainerTitle(AllText.about_us ,size ,context,0.08, 0.54),
        Stack(children: [
        Image( image:const AssetImage("images/background_co.png"),width: size.width,),
          Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageController(size ,context , 0.08,0.07 ,0),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.07 ,left :size.width*0.05),
                width: size.width * 0.38,
                alignment: Alignment.centerLeft,
                child:context.text(text: AllText.about_us, size: size.width* 0.022,align: TextAlign.start,
                    color: context.mainColor,wieght: FontWeight.w600),

              ),
              SizedBox(height:size.height *0.03,),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.05,top: size.height * 0.01 ,bottom:size.height * 0.01  ),
                width: size.width * 0.4,
                alignment: Alignment.centerLeft,
             child:   context.text(text: AllText.aboutUsText
                    , size: size.width*0.011, color: context.mainColor ,align: TextAlign.start),
              ),

              Padding(padding: EdgeInsets.only(left:size.width * 0.05, ),
              child: context.text(text: AllText.aboutUsText2,
               size:  size.width*0.011, color: context.mainColor),

              )

            ],)
        ],),
          ImageController(size ,context , 0.25,0.7,0),

          Container(
            margin: EdgeInsets.only(left: size.width * 0.25,top:size.height * 1.3,bottom: 0.01 ),
            alignment: Alignment.center,
            height: size.height * 0.13,
            width:size.width * 0.5,
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
            margin: EdgeInsets.only(top: size.height*1.47 ,right: size.width*0.25 ,left: size.width*0.25 ),
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
                    color: Color(0xFF3b4d5b),
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
    height: size.height *0.55 ,
    alignment: Alignment.center,
      margin: EdgeInsets.only(top: size.height*1.73),
      padding: EdgeInsets.only(top: size.height*0.15),
    decoration: const BoxDecoration(
    image:  DecorationImage(image: AssetImage("images/back_tile.png") ,fit: BoxFit.cover),
    ),
    child: Column(
    children: [
    context.text(text: AllText.aboutUsText7, size: size.width*0.011, color: (0xFFf0eee4),wieght: FontWeight.w200),
    context.text(text: AllText.aboutUsText6, size: size.width*0.011, color: (0xFFf0eee4),wieght: FontWeight.w300),
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
    context.text(text: AllText.whoAreTitle, size: size.width*0.011, color: (0xFFf0eee4),wieght: FontWeight.w200) ,
    SizedBox(height: size.height* 0.02,),
    context.text(text: AllText.service, size: size.width*0.011, color: (0xFFf0eee4),wieght: FontWeight.w200),
    SizedBox(height: size.height* 0.02,),
    context.text(text: AllText.about_us, size: size.width*0.011, color: (0xFFf0eee4),wieght: FontWeight.w200),

    ],
    ),
    )





        ],),
   ] );
  }

}
