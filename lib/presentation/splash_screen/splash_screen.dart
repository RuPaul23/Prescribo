import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/custom_icon_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black900.withOpacity(0.2),
            body: Container(
                width: double.maxFinite,
                padding:
                    EdgeInsets.symmetric(horizontal: 56.h, vertical: 105.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(flex: 55),
                      CustomImageView(
                          imagePath: ImageConstant.imgLogoNoBackground,
                          height: 126.v,
                          width: 262.h),
                      Spacer(flex: 44),
                      CustomIconButton(
                          height: 77.adaptSize,
                          width: 77.adaptSize,
                          padding: EdgeInsets.all(19.h),
                          decoration: IconButtonStyleHelper.outlineWhiteA,
                          onTap: () {
                            onTapBtnIconButton(context);
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowRightOpen))
                    ]))));
  }

  /// Navigates to the onboardingScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingScreen);
  }
}
