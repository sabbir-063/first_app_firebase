import 'package:flutter/material.dart';

import 'curved_edges.dart';

class OneCurvedEdgesWidget extends StatelessWidget {
  const OneCurvedEdgesWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OneCLiperPath(),
      child: child,
    );
  }
}
