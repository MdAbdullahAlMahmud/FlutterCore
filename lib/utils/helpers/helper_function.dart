
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class THelperFunction{

  static void showSnackBar(String msg){

    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(msg))
    );
  }


  static Size screenSize (){
    return MediaQuery.of(context).size;
  }

  static double screenHeight(){
    return screenSize().height;
  }
  static double screenWidth(){
    return screenSize().width;
  }


  static BuildContext context = Get.context!;
}