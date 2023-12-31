import 'package:deevth/check_paltform.dart';
import 'package:deevth/pages/coming_soon.dart';
import 'package:deevth/web/pages/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app/home.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
void main() {
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
    designSize: const Size(1820, 5024),
    minTextAdapt: true,
    builder: (context ,child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(backgroundColor: Colors.white),
        home : CheckPlatform()
      );
    },
    );
  }

}