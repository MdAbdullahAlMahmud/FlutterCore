
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

  static bool isDarkMode = Theme.of(context).brightness== Brightness.dark;


  static BuildContext context = Get.context!;


  static TextTheme textTheme = Theme.of(context).textTheme;

}