
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:get/get.dart';

class TDeviceUtils{

  TDeviceUtils._();



  static void launchUrl(String url) async{
    if(await canLaunchUrlString(url)){
      await launchUrlString(url);
    }else{
      throw 'could not launch $url';
    }
  }

  static double appBarHeight() {
    return 56.0;
  }
  static double bottomNavigationHeight() {
    return kBottomNavigationBarHeight;
  }

  static BuildContext context = Get.context!;

  static double getStatusBarHeight = MediaQuery.of(context).padding.top;
  static double getAppBarHeight = kToolbarHeight;

  static double getPixelRation = MediaQuery.of(context).devicePixelRatio;

  static double getKeyboardHeight() {
   final viewInsects = MediaQuery.of(context).viewInsets;
   return viewInsects.bottom;
  }

  static Future<bool> isKeyboardVisible() async {
    final viewInsects = MediaQuery.of(context).viewInsets;
    return viewInsects.bottom > 0;
  }

}