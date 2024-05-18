import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_counter_icon.dart';
import '../../../../../utils/constants/colors.dart';

class OneHomeAppBar extends StatelessWidget {
  const OneHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OneAppbar(
      title: Column(
        children: [
          Text("Good day for shopping",
              style: Theme.of(context).textTheme.labelMedium),
          Text("Sabbir Musfique",
              style: Theme.of(context).textTheme.headlineSmall),
        ],
      ),
      actions: [
        OneCartCounterIcon(
          onPressed: () {},
          color: OneColors.white,
        ),
      ],
    );
  }
}
