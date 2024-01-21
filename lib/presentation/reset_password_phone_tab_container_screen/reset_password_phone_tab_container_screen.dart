import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/presentation/reset_password_email_page/reset_password_email_page.dart';
import 'package:prescribo/presentation/reset_password_phone_page/reset_password_phone_page.dart';
import 'package:prescribo/widgets/app_bar/appbar_leading_image.dart';
import 'package:prescribo/widgets/app_bar/custom_app_bar.dart';

class ResetPasswordPhoneTabContainerScreen extends StatefulWidget {
  const ResetPasswordPhoneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ResetPasswordPhoneTabContainerScreenState createState() =>
      ResetPasswordPhoneTabContainerScreenState();
}

class ResetPasswordPhoneTabContainerScreenState
    extends State<ResetPasswordPhoneTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 35.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "Forgot Your Password?",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              Container(
                width: 324.h,
                margin: EdgeInsets.only(
                  left: 24.h,
                  right: 27.h,
                ),
                child: Text(
                  "Enter your email or your phone number, we will send you confirmation code",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 22.v),
              _buildTabview(context),
              SizedBox(
                height: 525.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    ResetPasswordEmailPage(),
                    ResetPasswordPhonePage(),
                  ],
                ),
              ),
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

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 51.v,
      width: 327.h,
      decoration: BoxDecoration(
        color: appTheme.gray5003,
        borderRadius: BorderRadius.circular(
          25.h,
        ),
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.teal40001,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.blueGray300,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        indicatorPadding: EdgeInsets.all(
          4.0.h,
        ),
        indicator: BoxDecoration(
          color: appTheme.whiteA700,
          borderRadius: BorderRadius.circular(
            21.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "Email",
            ),
          ),
          Tab(
            child: Text(
              "Phone",
            ),
          ),
        ],
      ),
    );
  }
}
