import 'package:flutter/material.dart';
import '../helper_class/controller_helper.dart';
import '../helper_class/string.dart';
import '../widget/title.dart';

class OurServesis extends StatelessWidget {
  OurServesis({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return
      Stack(children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
          top:size.width>500? size.height*0.35 :size.height*0.15,
          right: size.width*0.18,
          left: size.width*0.18
          ),
          child: Image(
              width: size.width * 0.95,
              height:size.width>500? size.height * 0.34 :size.height * 0.15 ,
              image:const AssetImage("images/dots.PNG"),fit: BoxFit.fitWidth),
        ),
        Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          conteainerTitle(AllText.service, size, context, 0.1, 0.51),
          Container(
            padding: EdgeInsets.all(size.width * 0.014),
            margin: EdgeInsets.only(
              top:size.width > 500 ? size.height * 0.12: size.height*0.05,
              left: size.width * 0.13,
              right: size.width * 0.13,
              bottom:size.width > 500 ?  size.height * 0.07 :size.height * 0.03
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Colors.black12 ,offset: Offset(3,3) ,blurRadius: 2)
              ],
                color: Color(0xFFf7f5f1),
                borderRadius: BorderRadius.circular(size.height * 0.5),
                border: Border.all(color: Color(0xFF7d8187), width: 0.7)),
            child: context.text(
                text: AllText.ourServiesText,
                size: size.width * 0.012,
                color: context.blackColor),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: size.width > 500?size.height * 0.65:size.height * 0.25,
              minHeight: size.width > 500?size.height * 0.5:size.height * 0.25,
            ),
            child: GridView.builder(
                itemCount: 5,
                physics:const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(
                    left: size.width * 0.09, right: size.width * 0.09),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 0.1,
                  childAspectRatio: 0.4,
                ),
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        height:(size.width * 0.24)+(size.width * 0.0275),
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Container(
                              width: size.width * 0.17,
                              height: size.width * 0.22,
                              margin: EdgeInsets.only(
                                left: size.width * 0.03,
                              ),
                              padding: EdgeInsets.only(
                                  left: size.width * 0.006,
                                  right: size.width * 0.006,
                                  top:size.width > 500 ? size.height * 0.07:size.height*0.03),
                              decoration: BoxDecoration(
                                  boxShadow: const[
                                BoxShadow(color: Colors.black12 ,offset: Offset(3,3) ,blurRadius: 2)
                                  ],
                                  color:const Color(0xfff7f5f1),
                                  border: Border.all(
                                      color:const Color(0xFF7d8187),
                                      width: 0.7),
                                  borderRadius: BorderRadius.circular(size.width*0.03)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,

                                children: [
                                  context.text(
                                      text: AllText.mainText[index],
                                      size: size.width * 0.01,
                                      color: context.blackColor,
                                      wieght: FontWeight.w400),
                                  SizedBox(height: size.height * 0.016),
                                  context.text(
                                      text: AllText.text1[index],
                                      size: size.width * 0.009,
                                      color: context.blackColor,
                                      fontStyle: FontStyle.italic,
                                      wieght: FontWeight.w400),
                                  context.text(
                                      text: AllText.text2[index],
                                      size: size.width * 0.009,
                                      fontStyle: FontStyle.italic,
                                      color: context.blackColor,
                                      wieght: FontWeight.w400),

                                ],
                              ),
                            ),
                            Positioned(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(size.width * 0.0015),
                                  margin: EdgeInsets.only(top:size.width > 500 ? size.height * 0.015:size.height*0.005),
                                  width: size.width * 0.07,
                                  height:size.width > 500 ? size.height * 0.035 :size.height*0.017,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(size.width * 0.5),
                                      gradient: LinearGradient(colors: [
                                        Color(context.babyBlue),
                                        Color(context.mainColor)
                                      ])),
                                  child: context.text(
                                      text: AllText.textTile[index],
                                      size: size.width*0.0085,
                                      wieght: FontWeight.w400,
                                      color: context.whiteColor),
                                )),
                            Positioned(
                                bottom:0,
                                left: size.width * 0.042,
                                child: CircleAvatar(
                                    radius: size.width * 0.057,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: size.width * 0.055,
                                      backgroundImage:
                                      AssetImage("images/${AllText.image[index]}"),
                                    ))),


                          ],
                        ),
                      ),
                      index != 0
                          ? FittedBox(
                        child: Container(
                          margin: EdgeInsets.only(
                            top:  size.width > 500?size.height * 0.14 :size.height * 0.07 ,
                          ),
                          child: Row(
                            children: [
                              context.text(
                                  text: ".......",
                                  size: size.width * 0.012,
                                  color: context.babyBlue,
                                  align: TextAlign.center),
                              Padding(
                                padding: EdgeInsets.only(top:size.width > 500? size.height*0.016 :size.height*0.008),
                                child: CircleAvatar(
                                  backgroundColor: Color(context.mainColor),
                                  radius: size.width * 0.002,

                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                          : const Text(""),

                    ],
                  );
                }),
          ),

        ],
      )
      ],);

  }
}
