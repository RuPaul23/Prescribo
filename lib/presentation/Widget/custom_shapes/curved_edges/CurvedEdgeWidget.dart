import 'package:flutter/material.dart';
import 'package:prescribo/presentation/Widget/custom_shapes/curved_edges/curveEdges.dart';

class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipPath(),
      child: child,
    );
  }
}