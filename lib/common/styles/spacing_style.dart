
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

class SpacingStyle{
  SpacingStyle._();

  static const paddingWithAppBarHeight = EdgeInsets.only(
    top: TSize.appBarHeight,
    left: TSize.defaultSpace,
    right: TSize.defaultSpace,
    bottom: TSize.defaultSpace,

  );
}