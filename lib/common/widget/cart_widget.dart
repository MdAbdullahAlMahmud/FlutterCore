import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/colors.dart';
import '../styles/box_style.dart';
class ItemWithBatchWidget extends StatelessWidget {
  const ItemWithBatchWidget({
    super.key,
    required this.item,
    this.backgroundColor,
    required this.onPressed,
    this.icon,
  });
  final String item;
  final Color? backgroundColor;
  final VoidCallback onPressed;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPressed,  icon: icon ?? const Icon(Iconsax.shopping_bag,color: TColors.white,)),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxStyle.boxBackgroundWithRadius(backgroundColor ?? TColors.dark, 15),
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
