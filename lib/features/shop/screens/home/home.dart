import 'package:carousel_slider/carousel_slider.dart';
import 'package:first_app_firebase/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:first_app_firebase/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:first_app_firebase/utils/constants/colors.dart';
import 'package:first_app_firebase/utils/constants/image_strings.dart';
import 'package:first_app_firebase/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/container/one_primary_header_widget.dart';
import '../../../../common/widgets/custom_shapes/container/search_container.dart';
import '../../../../common/widgets/images/one_rounded_image.dart';
import '../../../../common/widgets/layouts/one_grid_layout.dart';
import '../../../../common/widgets/text/section_header.dart';
import '../../../../utils/constants/image_strings.dart';
import 'widgets/one_home_appbar.dart';
import 'widgets/one_home_catagories.dart';
import 'widgets/one_promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Primary Header
            const OnePrimaryHeaderWidget(
              child: Column(
                children: [
                  ///Home app bar
                  OneHomeAppBar(),
                  SizedBox(height: OneSizes.spaceBtwSections),

                  ///home search bar
                  OneSearchContainer(text: "Search in Store..."),
                  SizedBox(height: OneSizes.spaceBtwSections),

                  ///home catagory sliders
                  Padding(
                    padding: EdgeInsets.only(left: OneSizes.defaultSpace),
                    child: Column(
                      children: [
                        OneSectionHeader(
                            title: "Popular Items.",
                            showActionButton: false,
                            textColor: OneColors.white),
                        SizedBox(height: OneSizes.spaceBtwItems),

                        ///categories
                        OneHomeCatagory(),
                      ],
                    ),
                  ),

                  ///
                ],
              ),
            ),

            ///Body Section Starts
            Padding(
              padding: const EdgeInsets.all(OneSizes.md),
              child: Column(
                children: [
                  ///Promo Slider
                  const OnePromoSlider(
                    banners: [
                      OneImages.banner_1,
                      OneImages.banner_2,
                      OneImages.banner_3,
                      OneImages.banner_4,
                    ],
                  ),

                  const SizedBox(height: OneSizes.spaceBtwSections),

                  ///Popular Products
                  OneGridLayout(itemCount: 4,itemBuilder: (_, index) => const OneProductCardVertical()),

                  //
                ],
              ),
            ),

            ///
          ],
        ),
      ),
    );
  }
}


