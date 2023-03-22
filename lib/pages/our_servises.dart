import 'package:flutter/material.dart';
import '../helper_class/controller_helper.dart';
import '../helper_class/string.dart';
import '../widget/title.dart';

class OurServesis extends StatelessWidget {
  OurServesis({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        conteainerTitle(AllText.service, size, context, 0.1, 0.51),
        Container(
          padding: EdgeInsets.all(size.width * 0.014),
          margin: EdgeInsets.only(
              top: size.height * 0.1,
              left: size.width * 0.13,
              right: size.width * 0.13,
              bottom: size.height * 0.05),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(context.grayColor),
              borderRadius: BorderRadius.circular(size.height * 0.5),
              border: Border.all(color: Colors.black87, width: 0.3)),
          child: context.text(
              text: AllText.ourServiesText,
              size: size.width * 0.012,
              color: context.blackColor),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: size.height * 0.65,
            minHeight: size.height * 0.5,
          ),
          child: GridView.builder(
              itemCount: 5,
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
                    index != 0
                    ? FittedBox(
                            child: Container(
                              margin: EdgeInsets.only(
                                top: size.height * 0.14,
                              ),
                              child: Row(
                                children: [
                                  context.text(
                                      text: "..........",
                                      size: size.width * 0.012,
                                      color: context.babyBlue,
                                      align: TextAlign.center),
                                 Padding(
                                   padding: EdgeInsets.only(top: size.height*0.016),
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
                    Container(
                      height:(size.width * 0.26)+(size.width * 0.0275),
                      child: Stack(
                        children: [
                          Container(
                            width: size.width * 0.14,
                            height: size.width * 0.24,
                            margin: EdgeInsets.only(
                              left: size.width * 0.04,
                            ),
                            padding: EdgeInsets.only(
                                left: size.width * 0.006,
                                right: size.width * 0.006,
                                top: size.height * 0.05),
                            decoration: BoxDecoration(
                                color: Color(context.grayColor),
                                border: Border.all(
                                    color: Color(context.blackColor),
                                    width: 0.3),
                                borderRadius: BorderRadius.circular(size.width*0.03)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: [
                                context.text(
                                    text: AllText.mainText[index],
                                    size: size.width * 0.01,
                                    color: context.blackColor,
                                    wieght: FontWeight.w500),
                                SizedBox(height: size.height * 0.016),
                                context.text(
                                    text: AllText.text1[index],
                                    size: size.width * 0.008,
                                    color: context.blackColor,
                                    fontStyle: FontStyle.italic,
                                    wieght: FontWeight.w600),
                                context.text(
                                    text: AllText.text2[index],
                                    size: size.width * 0.008,
                                    fontStyle: FontStyle.italic,
                                    color: context.blackColor,
                                    wieght: FontWeight.w600),

                              ],
                            ),
                          ),
                          Positioned(
                              child: Container(
                                padding: EdgeInsets.all(size.width * 0.0015),
                                margin: EdgeInsets.only(top: size.height * 0.015),
                                width: size.width * 0.07,
                                height: size.height * 0.035,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(size.width * 0.5),
                                    gradient: LinearGradient(colors: [
                                      Color(context.babyBlue),
                                      Color(context.mainColor)
                                    ])),
                                child: context.text(
                                    text: AllText.textTile[index],
                                    size: size.width*0.01,
                                    wieght: FontWeight.w100,
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
                                    AssetImage("images/${AllText.image[index]}.png"),
                                  ))),
                        ],
                      ),
                    ),


                  ],
                );
              }),
        )
      ],
    );
  }
}
