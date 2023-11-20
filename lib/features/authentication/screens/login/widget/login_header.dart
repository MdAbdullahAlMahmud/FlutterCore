import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text.dart';
import '../../../../../utils/helpers/helper_function.dart';
class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(height: 150, image: AssetImage(TImages.appLogo)),
        Text(
          TText.loginTitle,
          style: THelperFunction.textTheme.headlineMedium,
        ),
        const SizedBox(
          height: TSize.sm,
        ),
        Text(
          TText.loginSubTitle,
          style: THelperFunction.textTheme.bodyMedium,
        ),
        const SizedBox(
          height: TSize.sm,
        ),
      ],
    );
  }
}
