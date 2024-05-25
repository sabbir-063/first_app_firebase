import 'package:first_app_firebase/utils/constants/colors.dart';
import 'package:first_app_firebase/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OneRoundedImage extends StatelessWidget {
  const OneRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageurl,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor = OneColors.white,
    this.fit,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = OneSizes.md,
  });

  final double? width, height;
  final String imageurl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageurl)
                : AssetImage(imageurl) as ImageProvider,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
