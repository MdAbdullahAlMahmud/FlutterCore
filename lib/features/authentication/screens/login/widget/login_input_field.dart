import 'package:e_commerce/features/authentication/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text.dart';
import '../../../../../utils/helpers/helper_function.dart';
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
              height: TSize.spaceBtwInputField,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash),
                  label: Text(TText.passwordLbl)),
            ),


            const SizedBox(
              height: TSize.spaceBtwSection,
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
              height: TSize.spaceBtwSection,
            ),

            // Sign in button , create accout

            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text(TText.loginTitle))),
            const SizedBox(
              height: TSize.spaceBtwItems,
            ),
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(TText.createANewAccount))),

          ],
        ));
  }
}
