
import 'package:flutter/material.dart';
import '../helper_class/controller_helper.dart';
import '../widget/socai_icon.dart';

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height *0.55 ,
      alignment: Alignment.center,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.only(top: size.height*0.15),
      decoration:const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/back_tile.png") ,fit: BoxFit.cover),
      ),
        child: Column(
          children: [
            context.text(text: "@deevth", size: 15, color: (0xFFf0eee4),wieght: FontWeight.w200),
            context.text(text: "wherever you need us !", size: 15, color: (0xFFf0eee4),wieght: FontWeight.w300),
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
            context.text(text: "Home", size: 15, color: (0xFFf0eee4),wieght: FontWeight.w200),
            SizedBox(height: size.height* 0.02,),
            context.text(text: "Who we Are", size: 15, color: (0xFFf0eee4),wieght: FontWeight.w200) ,
            SizedBox(height: size.height* 0.02,),
            context.text(text: "Our Servics", size: 15, color: (0xFFf0eee4),wieght: FontWeight.w200),
            SizedBox(height: size.height* 0.02,),
            context.text(text: "About us", size: 15, color: (0xFFf0eee4),wieght: FontWeight.w200),

          ],
        ),
    );
  }

}

