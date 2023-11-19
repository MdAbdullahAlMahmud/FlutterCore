import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
class TDeviceUtils{




  static void launchUrl(String url) async{
    if(await canLaunchUrlString(url)){
      await launchUrlString(url);
    }else{
      throw 'could not launch $url';
    }
  }
}