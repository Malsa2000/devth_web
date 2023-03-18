import 'package:deevth/helper_class/controller_helper.dart';
import 'package:deevth/widget/socai_icon.dart';
import 'package:deevth/widget/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      shrinkWrap: true,
      children:[
        conteainerTitle("About Us" ,size ,context,0.37 ,0.23,),
        Stack(children: [
        Image( image:const AssetImage("images/background_co.png"),width: size.width,),
          Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
             margin: EdgeInsets.only(left: size.width * 0.08,top: size.height * 0.07),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/image1.png")),
                  borderRadius: BorderRadius.circular(size.width* 0.03),
                  color: Color(context.mainColor),
                  boxShadow:const [
                    BoxShadow(color: Colors.black26 ,blurRadius: 3 ,offset: Offset(3, 4))
                  ]
              ),
              width: size.width * 0.38,
              height: size.width * 0.25,

            ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.07 ,left :size.width*0.05),
                width: size.width * 0.38,
                alignment: Alignment.centerLeft,
                child:context.text(text: "About Us", size: size.width* 0.022,align: TextAlign.start,
                    color: context.mainColor,wieght: FontWeight.w600),

              ),
              SizedBox(height:size.height *0.03,),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.05,top: size.height * 0.01 ,bottom:size.height * 0.01  ),
                width: size.width * 0.4,
                alignment: Alignment.centerLeft,
             child:   context.text(text: '''
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh
euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad
minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut 
aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in
vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis 
at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum 
zzril delenit augue duis dolore te feugait nulla facilisi. '''
                    , size: size.width*0.011, color: context.mainColor ,align: TextAlign.start),
              ),

              Padding(padding: EdgeInsets.only(left:size.width * 0.05, ),
              child: context.text(text: "Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, ",
               size:  size.width*0.011, color: context.mainColor),

              )

            ],)
        ],),
          Container(
            margin: EdgeInsets.only(left: size.width * 0.25,top: size.height * 0.7),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/image1.png")),
                borderRadius: BorderRadius.circular(size.width* 0.03),
                color: Color(context.mainColor),
                boxShadow:const [
                  BoxShadow(color: Colors.black26 ,blurRadius: 3 ,offset: Offset(3, 4))
                ]
            ),
            width: size.width * 0.38,
            height: size.width * 0.25,

          ),
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
            child: context.text(text: "Don’t be shy, ask Deevth!", size: size.width*0.021, color: context.whiteColor ,wieght: FontWeight.w400)
          ),
          Container(
            margin: EdgeInsets.only(top: size.height*1.47 ,right: size.width*0.25 ,left: size.width*0.25 ),
            child: Column(
              children: [
                    Text(
                  'Monday - Sunday: 7am - 5pm',
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
              context.text(text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh"
                  " euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. ", size: size.width*0.011, color: (0xFF3b4d5b),)
    ],),
          ),
           Container(
    width: size.width,
    height: size.height *0.55 ,
    alignment: Alignment.center,
      margin: EdgeInsets.only(top: size.height*1.73),
      padding: EdgeInsets.only(top: size.height*0.15),
    decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage("images/back_tile.png") ,fit: BoxFit.cover),
    ),
    child: Column(
    children: [
    context.text(text: "@deevth", size: size.width*0.011, color: (0xFFf0eee4),wieght: FontWeight.w200),
    context.text(text: "wherever you need us !", size: size.width*0.011, color: (0xFFf0eee4),wieght: FontWeight.w300),
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
    context.text(text: "Home", size: size.width*0.011, color: (0xFFf0eee4),wieght: FontWeight.w200),
    SizedBox(height: size.height* 0.02,),
    context.text(text: "Who we Are", size: size.width*0.011, color: (0xFFf0eee4),wieght: FontWeight.w200) ,
    SizedBox(height: size.height* 0.02,),
    context.text(text: "Our Servics", size: size.width*0.011, color: (0xFFf0eee4),wieght: FontWeight.w200),
    SizedBox(height: size.height* 0.02,),
    context.text(text: "About us", size: size.width*0.011, color: (0xFFf0eee4),wieght: FontWeight.w200),

    ],
    ),
    )





        ],),


   ] );
  }
}
