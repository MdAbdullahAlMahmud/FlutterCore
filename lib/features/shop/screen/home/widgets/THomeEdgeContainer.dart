import 'package:e_commerce/common/widget/TCurvedEdge.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class THomeEdgeContainer extends StatelessWidget {
  const THomeEdgeContainer({super.key,required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeHeader(
      color: TColors.primary,
      size: 230,
      child: child,

    );
  }
}
