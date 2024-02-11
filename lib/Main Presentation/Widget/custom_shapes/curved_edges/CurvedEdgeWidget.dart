import 'package:flutter/material.dart';
import 'package:prescribo/Main%20Presentation/Widget/custom_shapes/curved_edges/curveEdges.dart';

class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipPath(),
      child: child,
    );
  }
}