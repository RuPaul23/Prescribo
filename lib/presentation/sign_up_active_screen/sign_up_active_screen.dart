import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/app_bar/appbar_leading_image.dart';
import 'package:prescribo/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:prescribo/widgets/app_bar/custom_app_bar.dart';
import 'package:prescribo/widgets/custom_checkbox_button.dart';
import 'package:prescribo/widgets/custom_elevated_button.dart';
import 'package:prescribo/widgets/custom_text_form_field.dart';

class SignUpActiveScreen extends StatelessWidget {
  SignUpActiveScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController usernameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool checkbox = false;

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
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 25.v,
                ),
                child: Column(
                  children: [
                    _buildUsername(context),
                    SizedBox(height: 16.v),
                    _buildEmail(context),
                    SizedBox(height: 16.v),
                    _buildPassword(context),
                    SizedBox(height: 16.v),
                    _buildCheckbox(context),
                    SizedBox(height: 34.v),
                    _buildSignUp(context),
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
      height: 54.v,
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconChevronLeft,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 16.v,
          bottom: 14.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleThree(
        text: "Sign Up",
      ),
    );
  }

  /// Section Widget
  Widget _buildUsername(BuildContext context) {
    return CustomTextFormField(
      controller: usernameController,
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
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "abcerd123@gmail.com",
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
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Enter your password",
      hintStyle: CustomTextStyles.bodyLarge_1,
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
  Widget _buildCheckbox(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 14.h),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "I agree to the medidoc Terms of Service and Privacy Policy",
          isExpandedText: true,
          value: checkbox,
          onChange: (value) {
            checkbox = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign Up",
    );
  }
}
