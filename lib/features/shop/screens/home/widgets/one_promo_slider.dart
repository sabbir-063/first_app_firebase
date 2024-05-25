import 'package:carousel_slider/carousel_slider.dart';
import 'package:first_app_firebase/features/shop/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/container/circular_container.dart';
import '../../../../../common/widgets/images/one_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class OnePromoSlider extends StatelessWidget {
  const OnePromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1.0,
            onPageChanged: (index, _) => controller.updateIndex(index),
          ),
          items:
              banners.map((url) => (OneRoundedImage(imageurl: url))).toList(),
        ),

        const SizedBox(height: OneSizes.spaceBtwItems),

        /// slider bar
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  OneCircularContainer(
                    backgroundColor: controller.carsoulIndex.value == i
                        ? OneColors.primary
                        : OneColors.grey,
                    height: 4.0,
                    width: 20,
                    margin:
                        const EdgeInsets.only(right: OneSizes.spaceBtwItems),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
