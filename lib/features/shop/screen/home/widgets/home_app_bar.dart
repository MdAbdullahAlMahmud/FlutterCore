import 'package:e_commerce/common/widget/searchbar/search_bar.dart';
import 'package:e_commerce/common/widget/text/t_section_heading.dart';
import 'package:e_commerce/features/shop/screen/home/widgets/home_categories.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widget/appbar/appbar.dart';
import '../../../../../common/widget/cart_widget.dart';
import '../../../../../common/widget/verticle_image_text/verticle_image_text_widget.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text.dart';
import 'THomeEdgeContainer.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return THomeEdgeContainer(
        child: Column(
      children: [
        TAppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TText.appBarTitle,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.apply(color: Colors.grey)),
              Text(
                TText.appBarSubTitle,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.apply(color: TColors.white),
              )
            ],
          ),
          actions: [
            ItemWithBatchWidget(item: "2", onPressed: () {}),
            ItemWithBatchWidget(
              item: "3",
              onPressed: () {},
              backgroundColor: TColors.dark,
              icon: const Icon(
                Iconsax.notification,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.defaultSpace,
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: TSearchbar(),
        ),
        Padding(
          padding: EdgeInsets.only(left: TSizes.defaultSpace, bottom: 8),
          child: Column(
            children: [
              TSectionHeading(
                  title: "Popular Categories",
                  showActionButton: false,
                  textColor: Colors.white),
              const SizedBox(
                height: 8,
              ),
              THomeCategories()
            ],
          ),
        )
      ],
    ));
  }
}

