import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
class OnBoardingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children:  [
              OnBoardingPage(title: "First Page", description: "Desciption 1", image: TImages.onBoardingImages1),
              OnBoardingPage(title: "Second Page", description: "Desciption 2", image: TImages.onBoardingImages2),
              OnBoardingPage(title: "Third Page", description: "Desciption 3", image: TImages.onBoardingImages1),
            ],
          )
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
      padding: const EdgeInsets.all(TSize.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: THelperFunction.screenWidth() * 0.8,
            height: THelperFunction.screenHeight() * 0.6,
          ),
          Text(title,style : Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
          const SizedBox(height: TSize.spaceBtwItems,),
          Text(description,style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center)
        ],
      ),
    );
  }
}

