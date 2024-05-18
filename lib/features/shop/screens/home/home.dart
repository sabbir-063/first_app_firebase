import 'package:first_app_firebase/common/widgets/appbar/appbar.dart';
import 'package:first_app_firebase/utils/constants/colors.dart';
import 'package:first_app_firebase/utils/constants/sizes.dart';
import 'package:first_app_firebase/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shapes/container/one_primary_header_widget.dart';
import '../../../../common/widgets/products/cart/cart_counter_icon.dart';
import 'widgets/one_home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            OnePrimaryHeaderWidget(
              child: Column(
                children: [
                  ///Home app bar
                  const OneHomeAppBar(),
                  const SizedBox(height: OneSizes.spaceBtwSections),

                  ///home search bar
                  OneSearchContainer(),

                  ///home catagory sliders
                  ///
                  ///
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OneSearchContainer extends StatelessWidget {
  const OneSearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: OneSizes.defaultSpace),
      child: Container(
        width: OneDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(OneSizes.md),
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(OneSizes.cardRadiusLg),
          color: OneColors.white,
          border: Border.all(color: OneColors.grey),
        ),
        child: Row(
          children: [
            const Icon(Iconsax.search_normal,
                color: OneColors.darkGrey),
            const SizedBox(width: OneSizes.spaceBtwItems),
            Text("Search in Store",
                style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
