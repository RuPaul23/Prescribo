import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/app_bar/appbar_leading_image.dart';
import 'package:prescribo/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:prescribo/widgets/app_bar/custom_app_bar.dart';
import 'package:prescribo/widgets/custom_checkbox_button.dart';
import 'package:prescribo/widgets/custom_elevated_button.dart';
import 'package:prescribo/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  bool agreeCheckBox = false;

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
                    _buildNameEditText(context),
                    SizedBox(height: 16.v),
                    _buildEmailEditText(context),
                    SizedBox(height: 16.v),
                    _buildPasswordEditText(context),
                    SizedBox(height: 16.v),
                    _buildAgreeCheckBox(context),
                    SizedBox(height: 34.v),
                    _buildSignUpButton(context),
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
      title: AppbarSubtitleFive(
        text: "Sign Up",
      ),
    );
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return CustomTextFormField(
      controller: nameEditTextController,
      hintText: "Enter your name",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLock,
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
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return CustomTextFormField(
      controller: emailEditTextController,
      hintText: "Enter your email",
      textInputType: TextInputType.emailAddress,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgCheckmark,
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
    );
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return CustomTextFormField(
      controller: passwordEditTextController,
      hintText: "Enter your password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLocation,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 24.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgEye,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildAgreeCheckBox(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 14.h),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "I agree to the medidoc Terms of Service and Privacy Policy",
          isExpandedText: true,
          value: agreeCheckBox,
          onChange: (value) {
            agreeCheckBox = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign Up",
    );
  }
}
