import 'package:deevth/helper_class/controller_helper.dart';
import 'package:deevth/helper_class/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class OurServesApp extends StatelessWidget {
  const OurServesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 630.w ,top :150.h ),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(60.r)),
            color:const Color(0xFF3a4c5a),

          ),
          height:126.h,
          width:750.w,
          child: Container(
            alignment: Alignment.center,
            height:126.h,
            width:623.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(60.r)),
                boxShadow:const [BoxShadow(color: Colors.black26 ,blurRadius: 2 ,offset: Offset(3,3))],
                gradient:const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF3a4c5a),
                      Color(0xFF1e2a36),
                    ]
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image:const AssetImage("images/logo.png"),
                  width: 58.w,
                  height: 51.h,
                ),
                context.text(text: "Deevth  | ", size: 40.sp, color: (0xFFcbc8b9),wieght: FontWeight.w200,
                    fontStyle: FontStyle.italic),
                context.text(text: AllText.service, size:48.sp, color: (0xFFFFFFFF) ,wieght: FontWeight.w500 ,
                    fontStyle: FontStyle.italic)

              ],
            ),
          )
          ,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 90.w,vertical: 37.h),
          margin: EdgeInsets.only(
              top:160.h,
              left: 306.w,
              bottom: 106.h,
              right: 306.w,),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(context.grayColor),
              borderRadius: BorderRadius.circular(66.r),
              border: Border.all(color: Colors.black87, width: 0.3)),
          child: context.text(
              text: AllText.ourServiesText,
              size:19.sp,
              color: context.blackColor),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 600.h,
            minHeight: 600.h,
          ),
          child: GridView.builder(
              itemCount: 5,
              padding: EdgeInsets.symmetric(
                  horizontal: 200.w),
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
                          top: 130.h,
                        ),
                        child: Row(
                          children: [
                            context.text(
                                text: "......",
                                size: 25.sp,
                                color: context.babyBlue,
                                align: TextAlign.center),
                            Padding(
                              padding: EdgeInsets.only(top:15.h),
                              child: CircleAvatar(
                                backgroundColor: Color(context.mainColor),
                                radius: 7.r,

                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                        : const Text(""),
                    Container(
                      height:500.h,
                      child: Stack(
                        children: [
                          Container(
                            width: 235.w,
                            height: 371.h,
                            margin: EdgeInsets.only(
                              left: 40.w,
                            ),
                            padding: EdgeInsets.only(
                                left: 30.w,
                                right: 30.w,
                                top: 70.h),
                            decoration: BoxDecoration(
                                color: Color(context.grayColor),
                                border: Border.all(
                                    color: Color(context.blackColor),
                                    width: 0.3),
                                borderRadius: BorderRadius.circular(50.r)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                context.text(
                                    text: AllText.mainText[index],
                                    size: 14.sp,
                                    color: context.blackColor,
                                    wieght: FontWeight.w500),
                                SizedBox(height: 25.h),
                                context.text(
                                    text: AllText.text1[index],
                                    size:14.sp,
                                    color: context.blackColor,
                                    fontStyle: FontStyle.italic,
                                    wieght: FontWeight.w600),
                                context.text(
                                    text: AllText.text2[index],
                                    size: 14.sp,
                                    fontStyle: FontStyle.italic,
                                    color: context.blackColor,
                                    wieght: FontWeight.w600),

                              ],
                            ),
                          ),
                          Positioned(
                              child: Container(
                                padding: EdgeInsets.all(20.w),
                                margin: EdgeInsets.only(top:27.h),
                                width: 132.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(65.r),
                                    gradient: LinearGradient(colors: [
                                      Color(context.babyBlue),
                                      Color(context.mainColor)
                                    ])),
                                child: context.text(
                                    text: AllText.textTile[index],
                                    size:14.sp,
                                    wieght: FontWeight.w100,
                                    color: context.whiteColor),
                              )),
                          Positioned(
                              bottom:0,
                              left: 70.w,
                              child: CircleAvatar(
                                  radius: 120.r,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 116.r,
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
