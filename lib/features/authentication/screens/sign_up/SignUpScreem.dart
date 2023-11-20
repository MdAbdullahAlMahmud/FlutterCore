import 'package:e_commerce/features/authentication/screens/sign_up/widget/sign_up_input_field.dart';
import 'package:e_commerce/utils/constants/text.dart';
import 'package:flutter/material.dart';

import '../../../../common/styles/spacing_style.dart';
import '../../../../common/widget/social_icon.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              //back Arrow

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const IconButton(onPressed:null , icon: Icon(Icons.arrow_back)),
                  const SizedBox(
                    height: TSize.spaceBtwItems,
                  ),
                  Text(TText.signUpTitle, style:THelperFunction.textTheme.bodyMedium,)

                ],
              ),
              const SizedBox(
                height: TSize.spaceBtwSection,
              ),

              //Form for input field
              const SignUpInputField(),

              // Footer section
              const SizedBox(
                height: TSize.spaceBtwSection,
              ),

              const SocialWidget(text: TText.orSignUpWith),


            ],
          ),
        ),
      ),
    );
  }
}
