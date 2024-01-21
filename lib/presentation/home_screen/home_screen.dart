import '../home_screen/widgets/homelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/app_bar/appbar_title.dart';
import 'package:prescribo/widgets/app_bar/appbar_trailing_image.dart';
import 'package:prescribo/widgets/app_bar/custom_app_bar.dart';
import 'package:prescribo/widgets/custom_elevated_button.dart';
import 'package:prescribo/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 13.h),
                child: Column(children: [
                  SizedBox(height: 16.v),
                  Padding(
                      padding: EdgeInsets.only(left: 12.h, right: 13.h),
                      child: CustomSearchView(
                          controller: searchController,
                          hintText: "Search doctor, drugs, articles...")),
                  SizedBox(height: 18.v),
                  _buildHomeList(context),
                  SizedBox(height: 9.v),
                  _buildCtaStack(context),
                  SizedBox(height: 2.v),
                  _buildTextRow(context),
                  SizedBox(height: 13.v),
                  _buildPillsWhiteRow(context),
                  SizedBox(height: 14.v),
                  _buildHealthArticleRow(context),
                  SizedBox(height: 15.v),
                  _buildArticleRow(context)
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 65.v,
        title:
            AppbarTitle(text: "prescribo", margin: EdgeInsets.only(left: 24.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgUser,
              margin: EdgeInsets.fromLTRB(22.h, 14.v, 22.h, 17.v))
        ]);
  }

  /// Section Widget
  Widget _buildHomeList(BuildContext context) {
    return SizedBox(
        height: 95.v,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 13.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 18.h);
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return HomelistItemWidget(onTapList: () {
                onTapList(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildCtaStack(BuildContext context) {
    return SizedBox(
        height: 161.v,
        width: 342.h,
        child: Stack(alignment: Alignment.centerRight, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(top: 10.v, right: 7.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 26.h, vertical: 20.v),
                  decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        Text("Why prescribo?",
                            style: CustomTextStyles.titleMediumGray900),
                        SizedBox(height: 6.v),
                        Text("Go Paperless Prescription",
                            style: CustomTextStyles.labelMediumInterGray900),
                        SizedBox(height: 19.v),
                        CustomElevatedButton(
                            height: 29.v,
                            width: 97.h,
                            text: "Use Now",
                            buttonStyle: CustomButtonStyles.fillPrimaryTL14,
                            buttonTextStyle:
                                CustomTextStyles.labelLargeWhiteA700)
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgMedicalPrescriptionRafiki,
              height: 161.adaptSize,
              width: 161.adaptSize,
              alignment: Alignment.centerRight)
        ]));
  }

  /// Section Widget
  Widget _buildTextRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Current Remainder",
              style: CustomTextStyles.titleMediumGray900_1),
          Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Text("See all",
                  style: CustomTextStyles.bodySmallInterPrimary))
        ]));
  }

  /// Section Widget
  Widget _buildPillsWhiteRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgMedicalPrescriptionPana,
                  height: 168.adaptSize,
                  width: 168.adaptSize,
                  margin: EdgeInsets.only(bottom: 11.v)),
              Column(children: [
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 19.h, vertical: 8.v),
                    decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 4.v),
                          Container(
                              width: 110.h,
                              margin: EdgeInsets.only(right: 1.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgPillsWhite,
                                        height: 35.adaptSize,
                                        width: 35.adaptSize,
                                        margin: EdgeInsets.only(bottom: 2.v)),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("08 : 30 AM",
                                              style: CustomTextStyles
                                                  .labelLargeWhiteA700SemiBold),
                                          SizedBox(height: 7.v),
                                          Text("Vitamin C",
                                              style: CustomTextStyles
                                                  .labelLargeWhiteA700SemiBold)
                                        ])
                                  ])),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: _buildTickOne(context,
                                  tickImage: ImageConstant.imgTick11,
                                  doseText: "1 Dose"))
                        ])),
                SizedBox(height: 13.v),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 21.h, vertical: 10.v),
                    decoration: AppDecoration.fillBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 2.v),
                          Container(
                              width: 106.h,
                              margin: EdgeInsets.only(left: 1.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgPills1,
                                        height: 30.adaptSize,
                                        width: 30.adaptSize,
                                        margin: EdgeInsets.only(
                                            top: 3.v, bottom: 2.v)),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("02 : 45 PM",
                                              style: CustomTextStyles
                                                  .labelLargePrimary),
                                          SizedBox(height: 6.v),
                                          Text("Vitamin A",
                                              style: CustomTextStyles
                                                  .labelLargePrimary)
                                        ])
                                  ])),
                          SizedBox(height: 7.v),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h, right: 22.h),
                              child: _buildTickOne(context,
                                  tickImage: ImageConstant.imgTick1,
                                  doseText: "1 Dose"))
                        ]))
              ])
            ]));
  }

  /// Section Widget
  Widget _buildHealthArticleRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h, right: 10.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Health Article", style: CustomTextStyles.titleMediumGray900_1),
          GestureDetector(
              onTap: () {
                onTapTxtSeeAll(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text("See all",
                      style: CustomTextStyles.bodySmallInterPrimary)))
        ]));
  }

  /// Section Widget
  Widget _buildArticleRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 7.h),
        padding: EdgeInsets.all(5.h),
        decoration: AppDecoration.outlineBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle460,
                  height: 46.v,
                  width: 55.h,
                  radius: BorderRadius.circular(8.h),
                  margin: EdgeInsets.only(bottom: 8.v)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 7.v, bottom: 7.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 179.h,
                            child: Text(
                                "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .labelMediumInterGray70001)),
                        SizedBox(height: 2.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Jun 10, 2021 ",
                                  style: CustomTextStyles.labelSmallGray500),
                              Container(
                                  height: 2.adaptSize,
                                  width: 2.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 5.h, top: 3.v, bottom: 4.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.gray500,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text("5min read",
                                      style:
                                          CustomTextStyles.labelSmallGray500))
                            ])
                      ])),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgBookmark,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  margin: EdgeInsets.only(top: 6.v, right: 6.h, bottom: 34.v))
            ]));
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

  /// Common widget
  Widget _buildTickOne(
    BuildContext context, {
    required String tickImage,
    required String doseText,
  }) {
    return SizedBox(
        width: 77.h,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: tickImage, height: 15.adaptSize, width: 15.adaptSize),
          Text(doseText,
              style: CustomTextStyles.labelLargePrimary
                  .copyWith(color: theme.colorScheme.primary))
        ]));
  }

  /// Navigates to the precriptionScreen when the action is triggered.
  onTapList(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.precriptionScreen);
  }

  /// Navigates to the articlesScreen when the action is triggered.
  onTapTxtSeeAll(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.articlesScreen);
  }
}
