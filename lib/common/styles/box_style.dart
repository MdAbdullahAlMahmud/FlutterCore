import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
class BoxStyle{
  BoxStyle._();

  static const double defaultRadius = 10;

  static BoxDecoration  boxBackgroundWithRadius(Color color ,double radius ){
    return BoxDecoration(
        color: color,
        border: Border.all(color: TColors.light),
        borderRadius: BorderRadius.circular(radius)
    );
  }

  static BoxDecoration  boxBackgroundWithRadiusShadow(Color background ,double? radius ,Color? shadowColor){
    return BoxDecoration(
        color: background,
        boxShadow:  [
          BoxShadow(
            color: shadowColor ?? TColors.grey,
            blurRadius: 2,
            blurStyle: BlurStyle.normal,
          )
        ],
        border: Border.all(color: TColors.light),
        borderRadius: BorderRadius.circular(radius ?? defaultRadius)
    );
  }

  static BoxDecoration boxBackground(
  {Color? backgroundColor, double? radius, Color? shadowColor}) {
    return BoxDecoration(
        color: backgroundColor ?? Colors.white,
        boxShadow: [
          BoxShadow(
            color: shadowColor ?? TColors.grey,
            blurRadius: 2,
            blurStyle: BlurStyle.outer,
          )
        ],
        border: Border.all(color: TColors.light),
        borderRadius: BorderRadius.circular(radius ?? defaultRadius));
  }
}