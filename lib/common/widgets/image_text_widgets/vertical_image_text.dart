import 'package:first_app_firebase/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class OneVerticalImageText extends StatelessWidget {
  const OneVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    required this.textColor,
    this.backgroundColor = OneColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = OneHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: OneSizes.spaceBtwItems),
        child: Column(
          children: [
            ///circular icons
            Container(
              width: 55,
              height: 55,
              padding: const EdgeInsets.all(OneSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (dark ? OneColors.dark : OneColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    color: dark ? OneColors.white : OneColors.dark),
              ),
            ),

            const SizedBox(height: OneSizes.spaceBtwItems / 2),

            ///text
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
