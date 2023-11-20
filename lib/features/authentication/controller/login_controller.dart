
import 'package:get/get.dart';
class LoginController extends GetxController{

  static LoginController get instance => Get.find();
  var rememberMeStates = false.obs;


  void checkChanged(status ){
    rememberMeStates.value = status;
  }


}