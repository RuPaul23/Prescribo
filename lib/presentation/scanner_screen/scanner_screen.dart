import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/app_bar/appbar_leading_image.dart';
import 'package:prescribo/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:prescribo/widgets/app_bar/appbar_trailing_image.dart';
import 'package:prescribo/widgets/app_bar/custom_app_bar.dart';

class ScannerScreen extends StatelessWidget {
  const ScannerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 54.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("SCANNING ...",
                          style: CustomTextStyles.labelMedium11),
                      SizedBox(height: 26.v),
                      SizedBox(
                          height: 351.v,
                          width: 267.h,
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage17,
                                height: 328.v,
                                width: 246.h,
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 351.v,
                                    width: 267.h,
                                    decoration: BoxDecoration(
                                        color: appTheme.blueGray1007e
                                            .withOpacity(0.4),
                                        borderRadius:
                                            BorderRadius.circular(10.h))))
                          ])),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 64.v,
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapIconChevronLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleSix(text: "Scanner"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgComponent1,
              margin: EdgeInsets.fromLTRB(24.h, 20.v, 24.h, 19.v))
        ]);
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return SizedBox(
        child: CustomImageView(
            imagePath: ImageConstant.imgGroup19,
            height: 24.v,
            width: 316.h,
            margin: EdgeInsets.fromLTRB(30.h, 28.v, 29.h, 27.v)));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapIconChevronLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
