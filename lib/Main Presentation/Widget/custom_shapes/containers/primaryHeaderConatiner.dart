import 'package:flutter/material.dart';
import 'package:prescribo/Main%20Presentation/Widget/custom_shapes/containers/circular_container.dart';
import 'package:prescribo/Main%20Presentation/Widget/custom_shapes/curved_edges/CurvedEdgeWidget.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
          color: Colors.blue,
          padding: const EdgeInsets.all(0),
          child: SizedBox(
            height: 400,
            child: Stack(children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: CircularContainer(
                      backgroundColor: Colors.blue.withOpacity(0.1))),
              Positioned(
                  top: 100,
                  right: -300,
                  child: CircularContainer(
                      backgroundColor: Colors.blue.withOpacity(0.1))),
            ]),
          )),
    );
  }
}