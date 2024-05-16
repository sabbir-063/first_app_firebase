import 'package:first_app_firebase/features/authentication/controllers/onboarding/onboarding.controller.dart';
import 'package:first_app_firebase/utils/constants/sizes.dart';
import 'package:first_app_firebase/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = OneHelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: OneDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: OneSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? OneColors.white : OneColors.black,
          dotHeight: 6,
        ),
      ),
    );
  }
}
