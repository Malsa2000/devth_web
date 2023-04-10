import 'package:deevth/pages/coming_soon.dart';
import 'package:deevth/web/coming_soon_app.dart';
import'package:flutter/material.dart';
class CheckPlatform extends StatelessWidget {
  const CheckPlatform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if(size.width <= 400){
      return const CommingSoonApp();
    }
    else{
      return const CommingSoon();
    }
  }
}

