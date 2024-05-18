import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class OneCartCounterIcon extends StatelessWidget {
  const OneCartCounterIcon({
    super.key,
    required this.color,
    required this.onPressed,
  });
  final Color color;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: const Icon(Iconsax.shopping_bag),
          color: color,
        ),
        Positioned(
          right: 6,
          top: 6,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.9),
                borderRadius: BorderRadius.circular(18)),
            child: Center(
              child: Text(
                "1",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: OneColors.white, fontSizeFactor: 0.8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
