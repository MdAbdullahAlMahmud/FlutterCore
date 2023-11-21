import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import 'container/circular_container.dart';
import 'container/curved_edge.dart';
class TCurvedEdgeHeader extends StatelessWidget {
  const TCurvedEdgeHeader({
    super.key,
    required this.child,
    this.size =400,
    this.color,
  });

  final Widget child;
  final double? size ;
  final Color? color ;

  @override
  Widget build(BuildContext context) {


    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: Container(
        color: color ?? TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: size ?? 400,
          child: Stack(
            children: [
              Positioned(
                  top: ((-150 * size! ) /400) ,
                  right: ((-250 * size! ) /400) ,
                  child: CircularContainer(
                    backgroundColor: TColors.white.withOpacity(.1),
                  )
              ),
              Positioned(
                  top: ((100 * size! ) /400 ) ,
                  right: ((-300 * size! ) /400) ,
                  child: CircularContainer(
                    backgroundColor: TColors.white .withOpacity(.1),
                  )
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
