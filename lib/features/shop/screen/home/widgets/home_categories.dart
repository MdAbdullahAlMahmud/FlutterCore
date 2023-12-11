import 'package:flutter/material.dart';

import '../../../../../common/widget/verticle_image_text/verticle_image_text_widget.dart';
import '../../../../../utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          itemCount: 6,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  TVerticalImageText(
              image: TImages.toyIcon,
              title: "Shoes Categories",
              onTap: (){},
            );
          }),
    );
  }
}
