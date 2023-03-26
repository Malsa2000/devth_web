import 'package:deevth/web/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app/home.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  ScreenUtilInit(
        designSize: const Size(1820, 5024),
    minTextAdapt: true,
    builder: (context ,child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(backgroundColor: Colors.white),
        initialRoute: size.width > 380?  "/home" :"/home_app",
        home: Home(),
        routes: {
          //home web
          "/home" : (context) =>  Home(),

          // home app
          "/home_app" :(context)=>HomeApp()






        },
      );
    },
    );



  }

}