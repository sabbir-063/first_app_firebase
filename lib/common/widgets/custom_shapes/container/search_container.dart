import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class OneSearchContainer extends StatelessWidget {
  const OneSearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = OneHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: OneSizes.defaultSpace),
        child: Container(
          width: OneDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(OneSizes.md),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(OneSizes.cardRadiusLg),
            color: showBackground
                ? dark
                    ? OneColors.dark
                    : OneColors.white
                : Colors.transparent,
            border: Border.all(color: OneColors.grey),
          ),
          child: Row(
            children: [
              const Icon(Iconsax.search_normal, color: OneColors.darkGrey),
              const SizedBox(width: OneSizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
