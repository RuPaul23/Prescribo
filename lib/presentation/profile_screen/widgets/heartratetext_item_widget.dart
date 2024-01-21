import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';

// ignore: must_be_immutable
class HeartratetextItemWidget extends StatelessWidget {
  const HeartratetextItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 63.h,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgTelevision,
              height: 32.adaptSize,
              width: 32.adaptSize,
            ),
            SizedBox(height: 4.v),
            Text(
              "Heart rate",
              style: CustomTextStyles.labelMediumInterCyan100,
            ),
            SizedBox(height: 2.v),
            Text(
              "215bpm",
              style: theme.textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
