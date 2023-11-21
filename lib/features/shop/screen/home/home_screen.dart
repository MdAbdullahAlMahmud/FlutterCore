import 'package:e_commerce/common/styles/box_style.dart';
import 'package:e_commerce/common/widget/appbar/appbar.dart';
import 'package:e_commerce/common/widget/container/circular_container.dart';
import 'package:e_commerce/common/widget/container/curved_edge.dart';
import 'package:e_commerce/common/widget/searchbar/search_bar.dart';
import 'package:e_commerce/features/shop/screen/home/widgets/THomeEdgeContainer.dart';
import 'package:e_commerce/features/shop/screen/home/widgets/home_app_bar.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widget/cart_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            THomeAppBar(),
            TSearchbar()
          ],
        ),
      ),
    );
  }
}
