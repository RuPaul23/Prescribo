import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/custom_elevated_button.dart';

class LogOutPopUpDialog extends StatelessWidget {
  const LogOutPopUpDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 327.h,
        padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 49.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Container(
                  height: 103.adaptSize,
                  width: 103.adaptSize,
                  padding: EdgeInsets.all(22.h),
                  decoration: AppDecoration.fillGray
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder51),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIcRoundLogout,
                      height: 57.adaptSize,
                      width: 57.adaptSize,
                      alignment: Alignment.center)),
              SizedBox(height: 52.v),
              SizedBox(
                  width: 246.h,
                  child: Text("Are you sure to log out of your account?",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style:
                          theme.textTheme.titleLarge!.copyWith(height: 1.25))),
              SizedBox(height: 27.v),
              CustomElevatedButton(
                  text: "Log Out",
                  margin: EdgeInsets.symmetric(horizontal: 31.h)),
              SizedBox(height: 18.v),
              GestureDetector(
                  onTap: () {
                    onTapTxtCancel(context);
                  },
                  child: Text("Cancel",
                      style: CustomTextStyles.titleMediumTeal40001))
            ]));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapTxtCancel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
