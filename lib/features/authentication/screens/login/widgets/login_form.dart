import 'package:first_app_firebase/features/authentication/screens/password_configure/forget_password.dart';
import 'package:first_app_firebase/features/authentication/screens/signup/signup.dart';
import 'package:first_app_firebase/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class OneForm extends StatelessWidget {
  const OneForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: OneSizes.spaceBtwSections),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: OneTexts.email,
              ),
            ),
            const SizedBox(
              height: OneSizes.spaceBtwInputField,
            ),
            //Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: OneTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),

            const SizedBox(
              height: OneSizes.spaceBtwInputField / 2,
            ),

            // Remember Me and Forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(OneTexts.remember),
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(OneTexts.forget),
                ),
              ],
            ),

            const SizedBox(
              height: OneSizes.spaceBtwItems,
            ),

            //Sign IN Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationBarMenu()),
                child: const Text(OneTexts.signIn),
              ),
            ),

            const SizedBox(
              height: OneSizes.spaceBtwInputField,
            ),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignUpScreen()),
                child: const Text(OneTexts.createAcc),
              ),
            ),

            const SizedBox(
              height: OneSizes.spaceBtwSections / 2,
            ),
          ],
        ),
      ),
    );
  }
}
