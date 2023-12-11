import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
class TVerticalImageText extends StatelessWidget {
  final String image , title;
  final Color? backgroundColor;
  final void Function()? onTap;
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.backgroundColor = TColors.white,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 52,
              height: 52,
              padding: EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                  color: backgroundColor ?? (THelperFunction.isDarkMode(context) ? TColors.black : TColors.white),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color:  (THelperFunction.isDarkMode(context) ? TColors.light  : TColors.dark),
                ),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            SizedBox(
                width : 52,
                child: Text(title,
                  maxLines: 1,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: TColors.white),
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }
}
