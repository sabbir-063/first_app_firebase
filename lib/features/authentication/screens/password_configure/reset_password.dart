import 'package:first_app_firebase/features/authentication/screens/login/login.dart';
import 'package:first_app_firebase/utils/constants/image_strings.dart';
import 'package:first_app_firebase/utils/constants/sizes.dart';
import 'package:first_app_firebase/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(OneSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                  image: const AssetImage(OneImages.deliveredEmailIllustration),
                  width: OneHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: OneSizes.spaceBtwSections),

              ///title and subtitle
              Text(
                OneTexts.changeYourPasstitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: OneSizes.spaceBtwItems),

              Text(
                OneTexts.changeYourPasswordSubtitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: OneSizes.spaceBtwItems),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const LoginScreen()),
                    child: const Text("Done")),
              ),
              const SizedBox(height: OneSizes.spaceBtwItems),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {}, child: const Text("Resend Email")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
