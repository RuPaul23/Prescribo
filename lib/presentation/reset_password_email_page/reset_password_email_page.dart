import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/custom_elevated_button.dart';
import 'package:prescribo/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordEmailPage extends StatefulWidget {
  const ResetPasswordEmailPage({Key? key})
      : super(
          key: key,
        );

  @override
  ResetPasswordEmailPageState createState() => ResetPasswordEmailPageState();
}

class ResetPasswordEmailPageState extends State<ResetPasswordEmailPage>
    with AutomaticKeepAliveClientMixin<ResetPasswordEmailPage> {
  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                decoration: AppDecoration.fillWhiteA,
                child: Column(
                  children: [
                    SizedBox(height: 24.v),
                    _buildEmailForm(context),
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
  Widget _buildEmailForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
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
          SizedBox(height: 32.v),
          CustomElevatedButton(
            text: "Reset Password",
          ),
        ],
      ),
    );
  }
}
