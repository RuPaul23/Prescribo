import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class HomelistItemWidget extends StatelessWidget {
  HomelistItemWidget({
    Key? key,
    this.onTapList, required String imagePath,
  }) : super(
          key: key,
        );

  VoidCallback? onTapList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 71.h,
      child: GestureDetector(
        onTap: () {
          onTapList!.call();
        },
        child: Column(
          children: [
            CustomIconButton(
              height: 64.adaptSize,
              width: 64.adaptSize,
              padding: EdgeInsets.all(15.h),
              decoration: IconButtonStyleHelper.fillGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgPrescription,
              ),
            ),
            SizedBox(height: 15.v),
            Text(
              "Prescription",
              style: CustomTextStyles.labelLargePlusJakartaSansBluegray400_1,
            ),
          ],
        ),
      ),
    );
  }
}
