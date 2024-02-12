import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/custom_icon_button.dart';

// ignore: camel_case_types
class listItemWidget extends StatelessWidget {
  final VoidCallback? onTapList;
  final String imagePath;
  final String text;

  const listItemWidget({
    Key? key,
    this.onTapList,
    required this.imagePath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 71.h,
      child: GestureDetector(
        onTap: onTapList,
        child: Column(
          children: [
            CustomIconButton(
              height: 64.adaptSize,
              width: 64.adaptSize,
              padding: EdgeInsets.all(15.h),
              decoration: IconButtonStyleHelper.fillGray,
              child: CustomImageView(
                imagePath: imagePath,
              ),
            ),
            SizedBox(height: 15.v),
            Text(
              text,
              style: CustomTextStyles.labelLargePlusJakartaSansBluegray400_1,
            ),
          ],
        ),
      ),
    );
  }
}

