import 'package:e_commerce/features/authentication/controller/onboarding_controller.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widget/onboarding_skip.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widget/onboardingdot.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/text.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utils.dart';
class OnBoardingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,

            children:  [
              OnBoardingPage(title: TText.onBoarding1Title, description: TText.onBoarding1SubTitle, image: TImages.onBoardingImages1),
              OnBoardingPage(title: TText.onBoarding2Title, description: TText.onBoarding2SubTitle, image: TImages.onBoardingImages2),
              OnBoardingPage(title: TText.onBoarding3Title, description: TText.onBoarding3SubTitle, image: TImages.onBoardingImages1),
            ],
          ),

          const OnBoardingSkip(),

          // Dot Indicator
          const OnboardingDot(),
          
          Positioned(
            bottom: TDeviceUtils.getStatusBarHeight()+5,
              right: TSizes.defaultSpace,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape:const  CircleBorder()),
                child: const Icon(Iconsax.arrow_right_3),
                onPressed: (){
                  controller.nextPage();
                }
                ,
            
          ))


        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key,required this.title, required this.description,required this.image});

  final String title, description , image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: THelperFunction.screenWidth() * 0.8,
            height: THelperFunction.screenHeight() * 0.6,
          ),
          Text(title,style : Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
          const SizedBox(height: TSizes.spaceBtwItems,),
          Text(description,style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center)
        ],
      ),
    );
  }
}

