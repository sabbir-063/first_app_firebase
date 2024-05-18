import 'package:first_app_firebase/common/styles/spacing_styles.dart';
import 'package:first_app_firebase/utils/constants/sizes.dart';
import 'package:first_app_firebase/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String image, title, subTitle;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: OneSpacingStyles.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              ///Image
              Image(
                  image: AssetImage(image),
                  width: OneHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: OneSizes.spaceBtwSections),

              ///title and subtitle
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: OneSizes.spaceBtwItems),

              Text(
                subTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: OneSizes.spaceBtwItems),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: onPressed, child: const Text("Continue")),
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}
