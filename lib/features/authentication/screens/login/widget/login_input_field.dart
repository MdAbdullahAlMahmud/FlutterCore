import 'package:e_commerce/features/authentication/controller/login_controller.dart';
import 'package:e_commerce/features/authentication/screens/sign_up/SignUpScreem.dart';
import 'package:e_commerce/navigation/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text.dart';
import '../../../../../utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class LoginInputField extends StatelessWidget {
  const LoginInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = LoginController.instance;
    return Form(
        child: Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              label: Text(TText.emailLbl)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
              label: Text(TText.passwordLbl)),
        ),

        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        // Remember me and Forgot Password

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                    value: controller.rememberMeStates.value,
                    onChanged: (state) {
                      controller.checkChanged(state);
                    }),
                const Text(TText.rememberMeLbl),
              ],
            ),
            const TextButton(
                onPressed: null, child: Text(TText.forgotPasswordLbl))
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        // Sign in button , create accout

        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Get.to(const NavigationMenu());
                },
                child: const Text(TText.loginTitle))),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () {
                  Get.to(const SignUpScreen());
                },
                child: const Text(TText.createANewAccount))),
      ],
    ));
  }
}
