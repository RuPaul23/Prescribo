import '../precription_screen/widgets/userprofile1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/app_bar/appbar_leading_image.dart';
import 'package:prescribo/widgets/app_bar/appbar_subtitle.dart';
import 'package:prescribo/widgets/app_bar/appbar_trailing_image.dart';
import 'package:prescribo/widgets/app_bar/custom_app_bar.dart';
import 'package:prescribo/widgets/custom_search_view.dart';

class PrecriptionScreen extends StatelessWidget {
  PrecriptionScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 19.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 5.h,
                  right: 8.h,
                ),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Search Prescription",
                ),
              ),
              SizedBox(height: 11.v),
              _buildNinetySix(context),
              SizedBox(height: 17.v),
              _buildUserProfile(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 63.v,
      leadingWidth: 51.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconChevronLeft,
        margin: EdgeInsets.only(
          left: 27.h,
          top: 15.v,
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Prescription",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgComponent1,
          margin: EdgeInsets.fromLTRB(29.h, 19.v, 29.h, 20.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNinetySix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.h,
        right: 14.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Text(
              "Sort By",
              style: CustomTextStyles.titleMediumBlack900,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownSign,
            height: 11.adaptSize,
            width: 11.adaptSize,
            margin: EdgeInsets.only(
              left: 5.h,
              top: 10.v,
              bottom: 4.v,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Text(
              "Filter",
              style: CustomTextStyles.titleMediumBlack900,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownSign,
            height: 11.adaptSize,
            width: 11.adaptSize,
            margin: EdgeInsets.only(
              left: 8.h,
              top: 5.v,
              bottom: 9.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 12.v,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return Userprofile1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup19,
        height: 24.v,
        width: 316.h,
        margin: EdgeInsets.fromLTRB(30.h, 28.v, 29.h, 27.v),
      ),
    );
  }
}
