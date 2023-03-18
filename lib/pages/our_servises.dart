import 'package:deevth/helper_class/controller_helper.dart';
import 'package:deevth/widget/title.dart';
import 'package:flutter/material.dart';

class OurServesis extends StatelessWidget {
  OurServesis({Key? key}) : super(key: key);

  List<String> mainText = [
    "Designing a space is more than just a design. It is a personalization to your needs:",
    "When it comes to marketing we provide full-fledged  customized services:",
    "In a world full of possibilities, technology has became part of our daily lives. We provide IT consultation on all aspects.",
    "We make businesses more  efficient by providing the right analysis and consultation a client needs:",
    "We provide training for executives, presentation decks for shareholders, and we work side-by-side with them until we fulfill every service they need:"
  ];
  List<String> textTile = [
    "Architecture",
    "Marketing:",
    "Technology:",
    "Business",
    "Management"
  ];
  List<String> image = ["servis1", "image1", "servis3", "image1", "serves5"];
  List<String> text1 = ["• Interior Design","• Branding Strategy","• Full stack development"," Business Strategy & Mod-eling"
  ,"• PMO & Project Manage-ment"];
  List<String> text2 = ["• Exterior Design","• Re-branding","• ERP solutions" ,"• Process Mapping & Auto-mation","• Executive Management"];


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView(
      shrinkWrap: true,
      padding:
          EdgeInsets.only(top: size.height * 0.1, bottom: size.height * 0.1),
      children: [
        conteainerTitle("Our Services", size, context, 0.08, 0.54),
        Container(
          padding: EdgeInsets.all(size.width * 0.012),
          margin: EdgeInsets.only(
              top: size.height * 0.1,
              left: size.width * 0.13,
              right: size.width * 0.13,
              bottom: size.height * 0.05),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(context.grayColor),
              borderRadius: BorderRadius.circular(size.height * 0.5),
              border: Border.all(color: Color(context.blackColor), width: 0.4)),
          child: context.text(
              text:
                  '''We at Deevth consider every detail of our services. We exist to make the life of the clients 
          easier and simpler, and to provide everything a client needs in one place when it comes to services and consultation related 
          to the needs the business.''',
              size: size.width * 0.012,
              color: context.blackColor),
        ),

        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: size.height * 0.65,
            maxWidth: size.width * 0.7,
            minHeight: size.height * 0.5,
          ),
          child: GridView.builder(
              itemCount: 5,
              padding: EdgeInsets.only(
                  left: size.width * 0.07, right: size.width * 0.07),
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
                                //left: size.width * 0.001,
                              ),
                              child: Row(
                                children: [
                                  context.text(
                                      text: "...........",
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
                    FittedBox(
                      child: Container(
                        width: size.width * 0.13,
                        height: size.width * 0.2,
                        margin: EdgeInsets.only(
                          left: size.width * 0.04,
                        ),
                        padding: EdgeInsets.only(
                            left: size.width * 0.006,
                            right: size.width * 0.006,
                            top: size.height * 0.07),
                        decoration: BoxDecoration(
                            color: Color(context.grayColor),
                            border: Border.all(
                                color: Color(context.blackColor),
                                width: 0.5),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            context.text(
                                text: mainText[index],
                                size: size.width * 0.0085,
                                color: context.blackColor,
                                wieght: FontWeight.w600),
                            SizedBox(height: size.height * 0.013),
                            context.text(
                                text: text1[index],
                                size: size.width * 0.0085,
                                color: context.blackColor,
                                wieght: FontWeight.w600),
                            context.text(
                                text: text2[index],
                                size: size.width * 0.0085,
                                color: context.blackColor,
                                wieght: FontWeight.w600),
                            Spacer()
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        child: Container(
                      padding: EdgeInsets.all(size.width * 0.0015),
                      margin: EdgeInsets.only(top: size.height * 0.015),
                      width: size.width * 0.075,
                      height: size.height * 0.038,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(size.width * 0.5),
                          gradient: LinearGradient(colors: [
                            Color(context.babyBlue),
                            Color(context.mainColor)
                          ])),
                      child: context.text(
                          text: textTile[index],
                          size: size.width*0.011,
                          wieght: FontWeight.w300,
                          color: context.whiteColor),
                    )),
                    Positioned(
                        top: size.height * 0.31,
                        left: size.width * 0.045,
                        child: CircleAvatar(
                            radius: size.width * 0.06,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: size.width * 0.058,
                              backgroundImage:
                                  AssetImage("images/${image[index]}.png"),
                            ))),
                  ],
                );
              }),
        )
      ],
    );
  }
}
