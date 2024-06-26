import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/app_bar/appbar_leading_image.dart';
import 'package:prescribo/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:prescribo/widgets/app_bar/custom_app_bar.dart';
import 'package:prescribo/widgets/custom_elevated_button.dart';
import 'package:prescribo/widgets/custom_outlined_button.dart';
import 'package:prescribo/widgets/custom_text_form_field.dart';
import 'package:prescribo/presentation/login_success_dialog/login_success_dialog.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

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
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.all(24.h),
                            child: Column(children: [
                              _buildEmailEditText(context),
                              SizedBox(height: 16.v),
                              _buildPasswordEditText(context),
                              SizedBox(height: 10.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Text("Forgot Password?",
                                      style: CustomTextStyles
                                          .titleSmallInterTeal40001)),
                              SizedBox(height: 32.v),
                              _buildLoginButton(context),
                              SizedBox(height: 28.v),
                              RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Don’t have an account?",
                                        style: CustomTextStyles
                                            .bodyMediumInterff707684_1),
                                    TextSpan(text: " "),
                                    TextSpan(
                                        text: "Sign Up",
                                        style: CustomTextStyles
                                            .bodyMediumInterff199a8e)
                                  ]),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 26.v),
                              _buildElevenStack(context),
                              SizedBox(height: 24.v),
                              _buildSignInWithGoogleButton(context),
                              SizedBox(height: 16.v),
                              _buildSignInWithAppleButton(context),
                              SizedBox(height: 16.v),
                              _buildSignInWithFacebookButton(context),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 16.v, bottom: 15.v)),
        centerTitle: true,
        title: AppbarSubtitleFive(text: "Login"));
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
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v),
        contentPadding: EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v));
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
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v),
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 16.v, 24.h, 16.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEye,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 56.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Login",
        onPressed: () {
          onTapLoginButton(context);
        });
  }

  /// Section Widget
  Widget _buildOrButton(BuildContext context) {
    return CustomElevatedButton(
        height: 31.v,
        width: 53.h,
        text: "OR",
        buttonStyle: CustomButtonStyles.fillWhiteA,
        buttonTextStyle: theme.textTheme.bodyLarge!,
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildElevenStack(BuildContext context) {
    return SizedBox(
        height: 31.v,
        width: 327.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 14.v),
                  child: SizedBox(
                      width: 327.h, child: Divider(color: appTheme.gray200)))),
          _buildOrButton(context)
        ]));
  }

  /// Section Widget
  Widget _buildSignInWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign in with Google",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
                height: 20.v,
                width: 19.h)));
  }

  /// Section Widget
  Widget _buildSignInWithAppleButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign in with Apple",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgApple, height: 20.v, width: 16.h)));
  }

  /// Section Widget
  Widget _buildSignInWithFacebookButton(BuildContext context) {
    return CustomOutlinedButton(text: "Sign in with Facebook");
  }

  /// Displays a dialog with the [LoginSuccessDialog] content.
  onTapLoginButton(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: LoginSuccessDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
