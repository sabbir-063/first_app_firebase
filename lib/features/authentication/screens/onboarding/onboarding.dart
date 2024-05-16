import 'package:first_app_firebase/features/authentication/controllers/onboarding/onboarding.controller.dart';
import 'package:first_app_firebase/features/authentication/screens/onboarding/widgets/onboarding_circular_button.dart';
import 'package:first_app_firebase/features/authentication/screens/onboarding/widgets/onboarding_dots_navigation.dart';
import 'package:first_app_firebase/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:first_app_firebase/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:first_app_firebase/utils/constants/image_strings.dart';
import 'package:first_app_firebase/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scrolable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingView(
                image: OneImages.onBoardingImage1,
                title: OneTexts.onBoardingTitle1,
                subtitle: OneTexts.onBoardingSubTitle1,
              ),
              OnBoardingView(
                image: OneImages.onBoardingImage2,
                title: OneTexts.onBoardingTitle2,
                subtitle: OneTexts.onBoardingSubTitle2,
              ),
              OnBoardingView(
                image: OneImages.onBoardingImage3,
                title: OneTexts.onBoardingTitle3,
                subtitle: OneTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          ///Skip Button
          const OnBoardingSkip(),

          ///Dot Navigation
          const OnBoardingDotNavigation(),

          ///Circular Button
          const OnBoardingCircularButton(),
        ],
      ),
    );
  }
}
