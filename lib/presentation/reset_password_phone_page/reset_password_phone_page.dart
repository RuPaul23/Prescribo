import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/custom_elevated_button.dart';
import 'package:prescribo/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordPhonePage extends StatefulWidget {
  const ResetPasswordPhonePage({Key? key})
      : super(
          key: key,
        );

  @override
  ResetPasswordPhonePageState createState() => ResetPasswordPhonePageState();
}

class ResetPasswordPhonePageState extends State<ResetPasswordPhonePage>
    with AutomaticKeepAliveClientMixin<ResetPasswordPhonePage> {
  TextEditingController codeController = TextEditingController();

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
                    _buildCodeSection(context),
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
  Widget _buildCodeSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          CustomTextFormField(
            controller: codeController,
            hintText: "085281882151",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.phone,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgIconCall,
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
          SizedBox(height: 32.v),
          CustomElevatedButton(
            text: "Reset Password",
          ),
        ],
      ),
    );
  }
}
