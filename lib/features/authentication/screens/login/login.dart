import 'package:e_commerce/common/styles/box_style.dart';
import 'package:e_commerce/common/styles/spacing_style.dart';
import 'package:e_commerce/common/widget/social_icon.dart';
import 'package:e_commerce/features/authentication/controller/login_controller.dart';
import 'package:e_commerce/features/authentication/screens/login/widget/login_header.dart';
import 'package:e_commerce/features/authentication/screens/login/widget/login_input_field.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text.dart';
import 'package:e_commerce/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/helper_function.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return const Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              //Logo , tile , subtitle

              LoginHeader(),

              //Form for input field
              LoginInputField(),


              // Footer section
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              SocialWidget(text: TText.orSignInWith),


            ],
          ),
        ),
      ),
    );
  }
}
