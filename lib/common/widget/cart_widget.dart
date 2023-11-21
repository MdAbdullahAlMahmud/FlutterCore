import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/colors.dart';
import '../styles/box_style.dart';
class CartWidget extends StatelessWidget {
  const CartWidget({
    super.key,
    required this.item,
    this.color,
    required this.onPressed
  });
  final String item;
  final Color? color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPressed,  icon: const Icon(Iconsax.shopping_bag,color: TColors.white,)),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxStyle.boxBackgroundWithRadius(color ?? TColors.dark, 15),
            child: Center(
              child: Text(
                item,
                style: Theme.of(context).textTheme.bodyLarge?.apply(color: TColors.white, fontSizeFactor: 0.8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
