import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class OnBoardingController extends GetxController{

  static OnBoardingController get instance => Get.find();

  final pageController = PageController();

  var currentIndex = 0.obs;

  void updatePageIndicator(index){
    currentIndex.value = index;
  }


  void dotNavigationClick(index){
    currentIndex.value = index;
    pageController.jumpTo(index);

  }
  void nextPage(){
    if(currentIndex.value == 2){
      THelperFunction.showSnackBar("Next Screen");
      Get.to(const LoginScreen());
    }else{
      int page = currentIndex.value + 1;
      pageController.jumpToPage(page);
    }

  }
  void skipPage(){
    currentIndex.value = 2;
    pageController.jumpToPage(2);

  }
}