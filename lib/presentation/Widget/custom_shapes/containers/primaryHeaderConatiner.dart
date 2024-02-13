import 'package:flutter/material.dart';
import 'package:prescribo/presentation/Widget/custom_shapes/containers/circular_container.dart';
import 'package:prescribo/presentation/Widget/custom_shapes/curved_edges/CurvedEdgeWidget.dart';
import 'package:prescribo/utils_new/constants/colors.dart';

class CustomPrimaryHeaderContainer extends StatelessWidget {
  const CustomPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: SizedBox(
            height: 400,
            child: Container(
              color: CustomColors.primary,
              child: Stack(
                children: [
                Positioned(
                    top: -150,
                    right: -250,
                    child: CircularContainer(
                        backgroundColor: CustomColors.primary.withOpacity(0.1))),
                Positioned(
                    top: 100,
                    right: -300,
                    child: CircularContainer(
                        backgroundColor: CustomColors.primary.withOpacity(0.1))),
                        child,
              ]
              ),
            ),
          )
          );
  }
}
