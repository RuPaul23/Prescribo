import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/NavigationBar/Custom_NavigationBar.dart';
import 'package:prescribo/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LoginSuccessDialog extends StatelessWidget {
  const LoginSuccessDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.h,
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 40.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 18.v),
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
              imagePath: ImageConstant.imgCheckmarkPrimary,
              height: 31.v,
              width: 41.h,
              radius: BorderRadius.circular(
                3.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 42.v),
          Text(
            "Yeay! Welcome Back",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 7.v),
          SizedBox(
            width: 272.h,
            child: Text(
              "Once again you login successfully\ninto medidoc app",
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
            text: "Go to home",
             onPressed: () {
          // Navigate to the home page when the button is pressed
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => CustomnavigationBar()),
          );
        },
          ),
        ],
      ),
    );
  }
}
