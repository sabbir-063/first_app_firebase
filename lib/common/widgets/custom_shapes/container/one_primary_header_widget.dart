import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curver_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class OnePrimaryHeaderWidget extends StatelessWidget {
  const OnePrimaryHeaderWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return OneCurvedEdgesWidget(
      child: Container(
        color: OneColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: OneCircularContainer(
                  backgroundColor: OneColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: OneCircularContainer(
                  backgroundColor: OneColors.textWhite.withOpacity(0.1),
                ),
              ),

              ///appbar search bar sob ekhane asbe
              child,
            ],
          ),
        ),
      ),
    );
  }
}
