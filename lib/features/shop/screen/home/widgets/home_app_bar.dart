import 'package:e_commerce/common/widget/searchbar/search_bar.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widget/appbar/appbar.dart';
import '../../../../../common/widget/cart_widget.dart';
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
                  backgroundColor: TColors.notificationBatchBackground,
                  icon: const Icon(Iconsax.notification, color: Colors.white,
                  ),

                ),
              ],
            ),
            const SizedBox(height: TSize.defaultSpace,),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TSearchbar(),
            ),

          ],


        ))
    ;
  }
}
