import 'package:first_app_firebase/common/widgets/success_screen.dart';
import 'package:first_app_firebase/features/authentication/screens/login/login.dart';
import 'package:first_app_firebase/utils/constants/image_strings.dart';
import 'package:first_app_firebase/utils/constants/sizes.dart';
import 'package:first_app_firebase/utils/constants/text_strings.dart';
import 'package:first_app_firebase/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(OneSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                image: const AssetImage(OneImages.deliveredEmailIllustration),
                width: OneHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: OneSizes.spaceBtwSections),

              ///title and subtitle
              Text(
                OneTexts.confirmEmail,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: OneSizes.spaceBtwItems),

              Text(
                "support@gmail.com",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: OneSizes.spaceBtwItems),

              Text(
                OneTexts.confirmEmailSubtitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: OneSizes.spaceBtwItems),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(
                          () => SuccessScreen(
                            image: OneImages.staticSuccessIllustration,
                            title: OneTexts.yourAccountCreatedTitle,
                            subTitle: OneTexts.yourAccountCreatedSubtitle,
                            onPressed: () => Get.to(() => const LoginScreen()),
                          ),
                        ),
                    child: const Text("Continue")),
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
