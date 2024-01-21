import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/app_bar/appbar_leading_image.dart';
import 'package:prescribo/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:prescribo/widgets/app_bar/custom_app_bar.dart';
import 'package:prescribo/widgets/custom_checkbox_button.dart';
import 'package:prescribo/widgets/custom_elevated_button.dart';
import 'package:prescribo/widgets/custom_text_form_field.dart';

class SignUpCorrectPasswordScreen extends StatelessWidget {
  SignUpCorrectPasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController randomStringController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  bool iconCheck = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(24.h),
                child: Column(
                  children: [
                    CustomTextFormField(
                      controller: randomStringController,
                      hintText: "ABCDEF",
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgSettings,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 56.v,
                      ),
                      contentPadding: EdgeInsets.only(
                        top: 18.v,
                        right: 30.h,
                        bottom: 18.v,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    CustomTextFormField(
                      controller: emailController,
                      hintText: "abcerd123@gmail.com",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.emailAddress,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCheckmarkTeal40001,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 56.v,
                      ),
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 20.v, 24.h, 20.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIconCheck,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 56.v,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    _buildStackView(context),
                    SizedBox(height: 16.v),
                    _buildIconCheck(context),
                    SizedBox(height: 34.v),
                    CustomElevatedButton(
                      text: "Sign Up",
                    ),
                    SizedBox(height: 28.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don’t have an account?",
                            style: CustomTextStyles.bodyMediumInterff707684_1,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "Sign Up",
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
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconChevronLeft,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 16.v,
          bottom: 15.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "Sign Up",
      ),
    );
  }

  /// Section Widget
  Widget _buildStackView(BuildContext context) {
    return SizedBox(
      height: 56.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 56.v,
              width: 327.h,
              decoration: BoxDecoration(
                color: appTheme.gray5003,
                borderRadius: BorderRadius.circular(
                  24.h,
                ),
                border: Border.all(
                  color: appTheme.gray200,
                  width: 1.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 16.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIconPassword,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPlaceholder,
                    height: 8.v,
                    width: 92.h,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      top: 8.v,
                      bottom: 8.v,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgIconEyeSlash,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildIconCheck(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 14.h),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "I agree to the medidoc Terms of Service and Privacy Policy",
          isExpandedText: true,
          value: iconCheck,
          onChange: (value) {
            iconCheck = value;
          },
        ),
      ),
    );
  }
}
