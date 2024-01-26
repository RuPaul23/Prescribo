import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/custom_elevated_button.dart';
import 'package:prescribo/widgets/custom_outlined_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 835.adaptSize,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLogoColor1,
                    height: 290.v,
                    width: 375.h,
                    alignment: Alignment.topCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300), // Fade-in duration
                      curve: Curves.easeIn,
                      padding: EdgeInsets.symmetric(
                        horizontal: 60.h,
                        vertical: 100.adaptSize,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(60.adaptSize), // Rounded corners
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Let’s get started!",
                              style: CustomTextStyles.titleLarge22.copyWith(height : 6.0)),
                          SizedBox(height: 20.v),
                          SizedBox(
                            width: 250.h,
                            child: Text(
                              "Login to enjoy the features we’ve provided, and stay healthy!",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeGray600.copyWith(height: 1.50),
                            ),
                          ),
                          SizedBox(height: 58.v),
                          CustomElevatedButton(
                            text: "Login",
                            buttonStyle: CustomButtonStyles.fillLightBlueA,
                            onPressed: () {
                              onTapLogin(context);
                            },
                          ),
                          SizedBox(height: 16.v),
                          CustomOutlinedButton(
                            text: "Sign Up",
                            buttonStyle: CustomButtonStyles.outlineLightBlueA,
                            buttonTextStyle: CustomTextStyles.titleMediumLightblueA700,
                            onPressed: () {
                              onTapSignUp(context);
                            },
                          ),
                          SizedBox(height: 16.v),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
