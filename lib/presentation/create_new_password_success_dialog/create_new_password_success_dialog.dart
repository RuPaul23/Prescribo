import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class CreateNewPasswordSuccessDialog extends StatelessWidget {
  const CreateNewPasswordSuccessDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.h,
      padding: EdgeInsets.symmetric(
        horizontal: 39.h,
        vertical: 40.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 17.v),
          Container(
            height: 103.adaptSize,
            width: 103.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 29.h,
              vertical: 34.v,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder51,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCheckmarkTeal4000131x41,
              height: 32.v,
              width: 42.h,
              radius: BorderRadius.circular(
                3.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 40.v),
          Text(
            "Success",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 9.v),
          SizedBox(
            width: 248.h,
            child: Text(
              "You have successfully reset your password.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 22.v),
          CustomElevatedButton(
            text: "Login",
            margin: EdgeInsets.symmetric(horizontal: 32.h),
          ),
        ],
      ),
    );
  }
}
