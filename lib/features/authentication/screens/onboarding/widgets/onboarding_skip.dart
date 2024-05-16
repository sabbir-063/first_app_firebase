import 'package:first_app_firebase/features/authentication/controllers/onboarding/onboarding.controller.dart';
import 'package:first_app_firebase/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: OneDeviceUtils.getAppBarHeight(),
      right: OneSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skippage(),
        child: const Text("Skip"),
      ),
    );
  }
}
