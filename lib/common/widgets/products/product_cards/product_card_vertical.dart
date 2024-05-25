import 'package:first_app_firebase/common/styles/shadows.dart';
import 'package:first_app_firebase/common/widgets/custom_shapes/container/one_rounded_container.dart';
import 'package:first_app_firebase/common/widgets/icons/One_circular_icon.dart';
import 'package:first_app_firebase/common/widgets/images/one_rounded_image.dart';
import 'package:first_app_firebase/common/widgets/products/text/product_title_text.dart';
import 'package:first_app_firebase/utils/constants/colors.dart';
import 'package:first_app_firebase/utils/constants/image_strings.dart';
import 'package:first_app_firebase/utils/constants/sizes.dart';
import 'package:first_app_firebase/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OneProductCardVertical extends StatelessWidget {
  const OneProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OneHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [OneShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(OneSizes.productImageRadius),
          color: dark ? OneColors.darkGrey : OneColors.white,
        ),
        child: Column(
          children: [
            //Thumbnail, wishlist button, discount tag
            OneRoundedContainer(
              height: 170,
              padding: const EdgeInsets.all(OneSizes.sm),
              backgroundColor: dark ? OneColors.dark : OneColors.white,
              child: Stack(
                children: [
                  //thumbnail image
                  const OneRoundedImage(
                    imageurl: OneImages.productImage_16,
                    applyImageRadius: true,
                  ),

                  //sale tag
                  Positioned(
                    top: 12,
                    child: OneRoundedContainer(
                      radius: OneSizes.sm,
                      backgroundColor: OneColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: OneSizes.sm, vertical: OneSizes.xs),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: OneColors.black),
                      ),
                    ),
                  ),

                  //favourite icon
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: OneCircularIcon(
                        icon: Iconsax.heart5, color: OneColors.red),
                  ),
                  //
                ],
              ),
            ),
            const SizedBox(height: OneSizes.spaceBtwItems / 2),

            // Details
            Padding(
              padding: const EdgeInsets.all(OneSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const OneProductTitleText(
                      title: "Red Nikee Air Shoes", smallSize: true),
                  const SizedBox(height: OneSizes.spaceBtwItems / 2),

                  //brand name & verify icon
                  Row(
                    children: [
                      Text(
                        "Nikee",
                        style: Theme.of(context).textTheme.labelMedium,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(width: OneSizes.xs),
                      const Icon(Iconsax.verify5,
                          color: OneColors.primary, size: OneSizes.md),
                    ],
                  ),
                  const SizedBox(height: OneSizes.spaceBtwItems / 2),

                  //price , add icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///price
                      const ProductPriceText(price: '35', isLarge: true),

                      ///Add icon
                      Container(
                        decoration: const BoxDecoration(
                          color: OneColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: const SizedBox(
                          width: OneSizes.iconLg * 1.2,
                          height: OneSizes.iconLg * 1.2,
                          child: Icon(Iconsax.add, color: OneColors.white),
                        ),
                      ),

                      //
                    ],
                  ),
                ],
              ),
            ),

            //
          ],
        ),
      ),
    );
  }
}

class ProductPriceText extends StatelessWidget {
  const ProductPriceText({
    super.key,
    this.currencySign = "\$",
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text("\$35",
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: isLarge
            ? Theme.of(context).textTheme.headlineMedium!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null)
            : Theme.of(context).textTheme.titleLarge!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null));
  }
}
