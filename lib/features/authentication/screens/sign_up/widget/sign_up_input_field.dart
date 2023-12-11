import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/text.dart';

class SignUpInputField extends StatelessWidget {
  const SignUpInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [

            Row(
              children: [
                Expanded(
                    child:  TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.people),
                          label: Text(TText.signUpFirstNameLbl)),
                    ),
                ),
                const SizedBox(width: TSizes.defaultSpace,),
                Expanded(
                    child:  TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.people),
                          label: Text(TText.signUpLastNameLbl)),
                    ),
                ),


              ],
            ),

            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  label: Text(TText.signUpUsernameLbl)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  label: Text(TText.signUpEmailLbl)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.call),
                  label: Text(TText.signUpPhoneNumberLbl)),
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
              children: [
                Checkbox(
                    value: true,
                    onChanged: (state) {
                    }),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                RichText(
                  text: TextSpan(
                    text: TText.signUpCreateIAgreeLbl,
                    style: DefaultTextStyle.of(context).style,
                    children: const <TextSpan>[
                      TextSpan(
                          text: TText.signUpCreatePrivacyPolicyLbl, style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      )),
                      TextSpan(text: TText.commonAndLbl
                      ),

                      TextSpan(text: TText.signUpCreateTermsOfUseLbl ,style:  TextStyle(
                        decoration: TextDecoration.underline,
                      )),
                    ],
                  ),
                )
              ],
            ),

            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            // Sign in button , create account

            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text(TText.createANewAccount))),
          ],
        ));
  }
}
