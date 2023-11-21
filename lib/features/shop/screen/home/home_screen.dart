import 'package:e_commerce/common/widget/appbar/appbar.dart';
import 'package:e_commerce/common/widget/container/circular_container.dart';
import 'package:e_commerce/common/widget/container/curved_edge.dart';
import 'package:e_commerce/features/shop/screen/home/THomeEdgeContainer.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            THomeEdgeContainer(
                child:Column(
                  children: [
                    TAppBar(
                      title:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(TText.appBarTitle,style: Theme.of(context).textTheme.labelMedium?.apply(color: Colors.grey)),
                          Text(TText.appBarSubTitle,style: Theme.of(context).textTheme.headlineSmall?.apply(color: TColors.white),)
                        ],
                      ),
                    )
                  ],
                )

            )

          ],
        ),
      ),
    );
  }
}
