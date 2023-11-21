import 'package:e_commerce/common/styles/box_style.dart';
import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TSearchbar extends StatelessWidget {
  const TSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: TDeviceUtils.getScrrenWidth,
      padding:const  EdgeInsets.all(TSize.md),
      decoration:BoxDecoration(
        color : TColors.white,
        borderRadius: BorderRadius.circular(TSize.cardRadius),
        border: Border.all(color: TColors.light),
      ),
      child: Row(
        children: [
          const Icon(Iconsax.search_normal , color:  TColors.darkGrey,),
          const SizedBox(height: TSize.spaceBtwItems,),
          const Text("Search in Store", /*style: Theme.of(context).textTheme.bodySmall*/),
        ],
      ),
    );
  }
}
