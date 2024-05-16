import 'package:first_app_firebase/features/authentication/screens/password_configure/reset_password.dart';
import 'package:first_app_firebase/utils/constants/sizes.dart';
import 'package:first_app_firebase/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // automaticallyImplyLeading: false,
          ),
      body: Padding(
        padding: const EdgeInsets.all(OneSizes.defaultSpace),
        child: Column(
          children: [
            ///Headings
            Text(OneTexts.forgetPassword,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: OneSizes.spaceBtwItems),
            Text(OneTexts.forgetpassSubtitle,
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: OneSizes.spaceBtwSections * 2),

            ///text fields
            TextFormField(
              decoration: const InputDecoration(
                labelText: OneTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: OneSizes.spaceBtwSections),

            ///submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text("Submit"),
                onPressed: () => Get.to(() => const ResetPassword()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
