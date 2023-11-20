import 'package:e_commerce/features/authentication/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utils.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.appBarHeight(),
        right: TSize.defaultSpace,
        child: TextButton(
          child:const  Text("Skip"),
          onPressed: (){
            OnBoardingController.instance.skipPage();

          },

        ));
  }
}
