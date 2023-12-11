
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/text.dart';
import '../styles/box_style.dart';

class SocialWidget extends StatelessWidget {
   const SocialWidget({super.key,required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(
                child: Divider(
                  color: TColors.textPrimary,
                  thickness: 0.5,
                  indent: 20,
                  endIndent: 5,
                )),
            Text(
              text,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const Flexible(
                child: Divider(
                  color: TColors.textPrimary,
                  thickness: 0.5,
                  indent: 5,
                  endIndent: 20,
                )),
          ],
        ),

        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        // Footer login logos
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxStyle.boxBackgroundWithRadiusShadow(
                  TColors.white, 50, Colors.grey),
              child: const IconButton(
                onPressed: null,
                icon: Image(
                    height: TSizes.iconMd,
                    width: TSizes.iconMd,
                    image: AssetImage(TImages.googleLogo)),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Container(
              decoration: BoxStyle.boxBackgroundWithRadiusShadow(
                  TColors.white, 50, Colors.grey),
              child: const IconButton(
                onPressed: null,
                icon: Image(
                    height: TSizes.iconMd,
                    width: TSizes.iconMd,
                    image: AssetImage(TImages.faceBookLogo)),
              ),
            )
          ],
        ),
      ],
    );
  }
}
