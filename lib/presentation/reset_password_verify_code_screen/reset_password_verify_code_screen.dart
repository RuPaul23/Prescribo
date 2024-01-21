import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/app_bar/appbar_leading_image.dart';
import 'package:prescribo/widgets/app_bar/custom_app_bar.dart';
import 'package:prescribo/widgets/custom_elevated_button.dart';
import 'package:prescribo/widgets/custom_pin_code_text_field.dart';

class ResetPasswordVerifyCodeScreen extends StatelessWidget {
  const ResetPasswordVerifyCodeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 32.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "Enter Verification Code",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              SizedBox(height: 11.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 279.h,
                  margin: EdgeInsets.only(
                    left: 1.h,
                    right: 48.h,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Enter code that we have sent to your number ",
                          style: CustomTextStyles.bodyLargeffa0a7b0,
                        ),
                        TextSpan(
                          text: "08528188*** ",
                          style: CustomTextStyles.bodyLargeff101522,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 29.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: CustomPinCodeTextField(
                  context: context,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 40.v),
              CustomElevatedButton(
                text: "Verify",
              ),
              SizedBox(height: 26.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Didn’t receive the code? ",
                      style: CustomTextStyles.bodyMediumInterff707684_1,
                    ),
                    TextSpan(
                      text: "Resend",
                      style: CustomTextStyles.bodyMediumInterff199a8e,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 48.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconChevronLeftOnprimary,
        margin: EdgeInsets.fromLTRB(32.h, 8.v, 319.h, 8.v),
      ),
    );
  }
}
