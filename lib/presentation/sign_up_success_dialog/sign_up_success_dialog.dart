import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SignUpSuccessDialog extends StatelessWidget {
  const SignUpSuccessDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.h,
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 38.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 22.v),
          Container(
            height: 102.adaptSize,
            width: 102.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 29.h,
              vertical: 34.v,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder51,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCheckmarkTeal4000131x41,
              height: 31.v,
              width: 41.h,
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
            width: 290.h,
            child: Text(
              "Your account has been successfully registered",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLarge_1.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 22.v),
          CustomElevatedButton(
            width: 183.h,
            text: "Login",
          ),
        ],
      ),
    );
  }
}
