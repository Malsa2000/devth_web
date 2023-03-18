
import 'package:flutter/material.dart';

import '../helper_class/controller_helper.dart';
import '../helper_class/string.dart';
import '../widget/title.dart';
class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(left: size.width* 0.08 ),
      child:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:  size.height * 0.1,),
              conteainerTitle( AllText.whoAreTitle ,size ,context,0.30 ,0),
              SizedBox(height:  size.height * 0.05,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                context.text(text: AllText.whoAreSubTitle,
                    size: size.width* 0.022, color: (0xFF3b4d5b),align: TextAlign.start ,wieght: FontWeight.w600),
                SizedBox(height: size.height *0.02),
                Padding(padding: EdgeInsets.only(right: size.width* 0.13),
                  child: context.text(text:AllText.whoArePhrgraph,
                      size: size.width* 0.012, color: (0xFF3b4d5b),align: TextAlign.start )
                )

    ],),



            ],
          )

    );
  }
}
