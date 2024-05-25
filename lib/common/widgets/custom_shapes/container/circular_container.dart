import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class OneCircularContainer extends StatelessWidget {
  const OneCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.child,
    this.backgroundColor = OneColors.white,
    this.padding = 0,
    this.margin,
  });

  final double? width;
  final EdgeInsets? margin;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
