import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';

class OneHomeCatagory extends StatelessWidget {
  const OneHomeCatagory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 83,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, item) {
          return OneVerticalImageText(
            image: OneImages.blackberry,
            textColor: OneColors.white,
            title: "Black Barry",
            onTap: () {},
          );
        },
      ),
    );
  }
}
