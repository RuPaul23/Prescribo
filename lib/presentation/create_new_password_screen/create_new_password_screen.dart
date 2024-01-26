import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/app_bar/appbar_leading_image.dart';
import 'package:prescribo/widgets/app_bar/custom_app_bar.dart';
import 'package:prescribo/widgets/custom_elevated_button.dart';
import 'package:prescribo/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class CreateNewPasswordScreen extends StatelessWidget {
  CreateNewPasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController confirmpasswordController = TextEditingController();

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
                  vertical: 33.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create New Password",
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 12.v),
                    Text(
                      "Create your new password to login",
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: 24.v),
                    _buildCreateNewPasswordView(context),
                    SizedBox(height: 16.v),
                    CustomTextFormField(
                      controller: confirmpasswordController,
                      hintText: "Confirm password",
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
                    ),
                    SizedBox(height: 24.v),
                    CustomElevatedButton(
                      text: "Create Password",
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
      height: 48.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconChevronLeftOnprimary,
        margin: EdgeInsets.fromLTRB(32.h, 8.v, 319.h, 8.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateNewPasswordView(BuildContext context) {
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
}
