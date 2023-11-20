
import 'package:e_commerce/features/authentication/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utils.dart';
class OnboardingDot extends StatelessWidget {
  const OnboardingDot({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =  OnBoardingController.instance;
    return Positioned(
        bottom:  TDeviceUtils.bottomNavigationHeight() + 25,
        left: TSize.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          effect:const ExpandingDotsEffect(activeDotColor: TColors.dark, dotHeight: 6),
          count: 3,
        )
    );
  }
}
