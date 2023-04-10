import 'package:deevth/helper_class/controller_helper.dart';
import 'package:deevth/helper_class/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class OurServesApp extends StatelessWidget {
  const OurServesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double Size = 400;
    return
      Column(
      children: [
      Container(
        margin: EdgeInsets.only(right: 630.w ,top :150.h ),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(60.r)),
          color:const Color(0xFF3a4c5a),
        ),
        height:130.h,
        width:700.w,
        child: Container(
          alignment: Alignment.center,
          height:130.h,
          width:567.w,
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
              context.text(text: "Deevth | ", size: 36.sp, color: (0xFFcbc8b9),wieght: FontWeight.w200,
                  fontStyle: FontStyle.italic),
              context.text(text: AllText.service, size:38.sp, color: (context.textColor) ,wieght: FontWeight.w400 ,
                  fontStyle: FontStyle.italic)

            ],
          ),
        )
        ,),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 90.w,vertical: 37.h),
        margin: EdgeInsets.only(
            top:140.h,
            left: 306.w,
            right: 306.w,),
        alignment: Alignment.center,
        decoration: BoxDecoration(
           border: Border.all(
             color:const Color(0xFF7d8187),
                  width: 0.2),
            borderRadius: BorderRadius.circular(66.r),
          boxShadow: const[
              BoxShadow(color: Colors.black12 ,offset: Offset(3,3) ,blurRadius: 2)
            ],
              color: const Color(0xFFf7f5f1),
                   ),
        child: context.text(
            text: AllText.ourServiesText,
            size:25.sp,
            color: context.blackColor),
      ),
      Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
            right: 200.w,
            left: 222.w
        ),
        child: Image(
            width: 1150.w,
            image:const AssetImage("images/dots.png"),fit: BoxFit.fitWidth),
      ),
      ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 700.h,
          minHeight: 700.h,
        ),
        child: GridView.builder(
          physics:const NeverScrollableScrollPhysics(),
            itemCount: 5,
            padding: EdgeInsets.symmetric(
                horizontal: 200.w),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 0.1,
              childAspectRatio: 0.4,
            ),
            itemBuilder: (context, index) {
              return Container(
                height:500.h,
                child: Stack(
                  children: [
                    Container(
                      width: 235.w,
                      height: 500.h,
                      margin: EdgeInsets.only(
                      left: 40.w,
                      ),
                      padding: EdgeInsets.only(
                          left: 30.w,
                          right: 30.w,
                          top: 70.h),
                      decoration: BoxDecoration(
                          boxShadow:const [
                   BoxShadow(color: Colors.black12 ,offset: Offset(3,3) ,blurRadius: 2)
            ],
                     color: const Color(0xFFf7f5f1),
                          border: Border.all(
                              color:const Color(0xFF7d8187),
                              width: 0.2),
                          borderRadius: BorderRadius.circular(50.r)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          context.text(
                              text: AllText.mainText[index],
                              size: 20.sp,
                              color: context.blackColor,
                              wieght: FontWeight.w500),
                          SizedBox(height: 25.h),
                          context.text(
                              text: AllText.text1[index],
                              size:20.sp,
                              color: context.blackColor,
                              fontStyle: FontStyle.italic,
                              wieght: FontWeight.w400),
                          context.text(
                              text: AllText.text2[index],
                              size: 20.sp,
                              fontStyle: FontStyle.italic,
                              color: context.blackColor,
                              wieght: FontWeight.w400),

                        ],
                      ),
                    ),
                    Positioned(
                        child: Container(
                          alignment: Alignment.center,
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
                              size:20.sp,
                              wieght: FontWeight.w500,
                              color: context.whiteColor),
                        )),
                    Positioned(
                          top:340.h,
                        left: 45.w,
                        child: CircleAvatar(
                            radius: 170.r,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 160.r,
                              backgroundImage:
                              AssetImage("images/${AllText.image[index]}"),
                            ))),
                  ],
                ),
              );
            }),
      )
    ]);
  }
}
