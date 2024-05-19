import 'package:first_app_firebase/utils/constants/colors.dart';
import 'package:first_app_firebase/utils/constants/image_strings.dart';
import 'package:first_app_firebase/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/container/one_primary_header_widget.dart';
import '../../../../common/widgets/custom_shapes/container/search_container.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/text/section_header.dart';
import 'widgets/one_home_appbar.dart';
import 'widgets/one_home_catagories.dart';

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
                   OneHomeAppBar(),
                   SizedBox(height: OneSizes.spaceBtwSections),

                  ///home search bar
                   OneSearchContainer(text: "Search in Store..."),
                   SizedBox(height: OneSizes.spaceBtwSections),

                  ///home catagory sliders
                  Padding(
                    padding:  EdgeInsets.only(left: OneSizes.defaultSpace),
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
          ],
        ),
      ),
    );
  }
}



