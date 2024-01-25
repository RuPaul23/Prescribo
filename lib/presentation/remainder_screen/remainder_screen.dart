import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/app_bar/appbar_leading_image.dart';
import 'package:prescribo/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:prescribo/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:prescribo/widgets/app_bar/custom_app_bar.dart';

class RemainderScreen extends StatelessWidget {
  const RemainderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildAppBar(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 18.h, vertical: 11.v),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 15.h, right: 29.h),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgMorning,
                                              height: 32.v,
                                              width: 34.h),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 13.h,
                                                  top: 10.v,
                                                  bottom: 3.v),
                                              child: Text("Schedule",
                                                  style: CustomTextStyles
                                                      .titleSmallBlack900)),
                                          Spacer(),
                                          Opacity(
                                              opacity: 0.5,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 10.v, bottom: 3.v),
                                                  child: Text("See all",
                                                      style: CustomTextStyles
                                                          .titleSmallPrimary)))
                                        ]))),
                            SizedBox(height: 10.v),
                            _buildMorningSchedule(context),
                            SizedBox(height: 18.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 19.h, right: 23.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgDoctor,
                                          height: 32.adaptSize,
                                          width: 32.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 15.h, top: 15.v),
                                          child: Text("Appointments",
                                              style: CustomTextStyles
                                                  .titleSmallBlack900)),
                                      Spacer(),
                                      Opacity(
                                          opacity: 0.5,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 13.v),
                                              child: Text("See all",
                                                  style: CustomTextStyles
                                                      .titleSmallPrimary)))
                                    ])),
                            SizedBox(height: 5.v),
                            _buildDoctorReviews(context),
                            SizedBox(height: 4.v)
                          ]))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 4.v),
        decoration: AppDecoration.fillSecondaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder35),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomAppBar(
                  height: 32.v,
                  leadingWidth: 45.h,
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgIconChevronLeftWhiteA700,
                      margin:
                          EdgeInsets.only(left: 21.h, top: 4.v, bottom: 4.v),
                      onTap: () {
                        onTapIconChevronLeft(context);
                      }),
                  centerTitle: true,
                  title: AppbarSubtitleOne(text: "Remainder"),
                  actions: [
                    AppbarTrailingIconbutton(
                        imagePath: ImageConstant.imgAdd,
                        margin: EdgeInsets.symmetric(horizontal: 19.h))
                  ]),
              SizedBox(height: 26.v),
              Padding(
                  padding: EdgeInsets.only(left: 26.h, right: 29.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Today, 13 Jan",
                            style: CustomTextStyles
                                .titleLargePlusJakartaSansWhiteA700),
                        Padding(
                            padding: EdgeInsets.only(top: 6.v, bottom: 4.v),
                            child: Text("See calendar",
                                style: theme.textTheme.titleSmall))
                      ])),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 30.h, right: 34.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Mon", style: theme.textTheme.titleSmall),
                        Padding(
                            padding: EdgeInsets.only(left: 22.h),
                            child:
                                Text("Tue", style: theme.textTheme.titleSmall)),
                        Padding(
                            padding: EdgeInsets.only(left: 22.h),
                            child:
                                Text("Wed", style: theme.textTheme.titleSmall)),
                        Padding(
                            padding: EdgeInsets.only(left: 22.h),
                            child:
                                Text("Thu", style: theme.textTheme.titleSmall)),
                        Padding(
                            padding: EdgeInsets.only(left: 22.h),
                            child:
                                Text("Fri", style: theme.textTheme.titleSmall)),
                        Padding(
                            padding: EdgeInsets.only(left: 22.h),
                            child:
                                Text("Sat", style: theme.textTheme.titleSmall)),
                        Padding(
                            padding: EdgeInsets.only(left: 22.h),
                            child:
                                Text("Sun", style: theme.textTheme.titleSmall))
                      ])),
              SizedBox(height: 26.v),
              SizedBox(width: 67.h, child: Divider(color: appTheme.whiteA700)),
              SizedBox(height: 4.v)
            ]));
  }

  /// Section Widget
  Widget _buildMorningSchedule(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 3.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 7.v),
              Padding(
                  padding: EdgeInsets.only(right: 26.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgPills,
                            height: 27.v,
                            width: 29.h,
                            margin: EdgeInsets.only(top: 7.v, bottom: 9.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h, bottom: 18.v),
                            child: _buildVitaminCPills(context,
                                vitaminCName: "Vitamin C",
                                pillCount: "1 PILL")),
                        Spacer(),
                        SizedBox(
                            height: 43.v,
                            child: VerticalDivider(width: 1.h, thickness: 1.v)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 20.h, top: 2.v, bottom: 18.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Timing",
                                      style: theme.textTheme.labelMedium),
                                  Text("08 : 00 am - 08 : 15 am",
                                      style: CustomTextStyles
                                          .plusJakartaSansBlack900)
                                ])),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: SizedBox(
                                height: 43.v,
                                child: VerticalDivider(
                                    width: 1.h, thickness: 1.v))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 12.h, top: 4.v, bottom: 9.v),
                            child: _buildEnalaprilPills(context,
                                intakeText: "Intake", fourFifteenText: "2/30 "))
                      ])),
              SizedBox(height: 12.v),
              Align(
                  alignment: Alignment.center,
                  child: Divider(
                      color: appTheme.gray300.withOpacity(0.6),
                      indent: 7.h,
                      endIndent: 13.h)),
              SizedBox(height: 6.v),
              Padding(
                  padding: EdgeInsets.only(right: 26.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgPills,
                            height: 27.v,
                            width: 29.h,
                            margin: EdgeInsets.only(bottom: 15.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h, bottom: 18.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Enalapril",
                                      style: theme.textTheme.labelMedium),
                                  SizedBox(height: 1.v),
                                  Text("1 PILL",
                                      style: CustomTextStyles
                                          .plusJakartaSansBlack900)
                                ])),
                        Spacer(),
                        SizedBox(
                            height: 43.v,
                            child: VerticalDivider(width: 1.h, thickness: 1.v)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 20.h, top: 6.v, bottom: 14.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Timing",
                                      style: theme.textTheme.labelMedium),
                                  Text("11 : 00 am - 11 : 15 am",
                                      style: CustomTextStyles
                                          .plusJakartaSansBlack900)
                                ])),
                        Padding(
                            padding: EdgeInsets.only(left: 14.h),
                            child: SizedBox(
                                height: 43.v,
                                child: VerticalDivider(
                                    width: 1.h, thickness: 1.v))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 12.h, top: 2.v, bottom: 11.v),
                            child: _buildEnalaprilPills(context,
                                intakeText: "Intake", fourFifteenText: "4/15 "))
                      ])),
              SizedBox(height: 8.v),
              Align(
                  alignment: Alignment.center,
                  child: Divider(
                      color: appTheme.gray300.withOpacity(0.6),
                      indent: 8.h,
                      endIndent: 12.h)),
              SizedBox(height: 5.v),
              Padding(
                  padding: EdgeInsets.only(right: 26.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgPills,
                            height: 27.v,
                            width: 29.h,
                            margin: EdgeInsets.only(bottom: 15.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h, bottom: 17.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("NovoRapaid",
                                      style: theme.textTheme.labelMedium),
                                  SizedBox(height: 1.v),
                                  Text("3U/ml",
                                      style: CustomTextStyles
                                          .plusJakartaSansBlack900)
                                ])),
                        Padding(
                            padding: EdgeInsets.only(left: 25.h),
                            child: SizedBox(
                                height: 43.v,
                                child: VerticalDivider(
                                    width: 1.h, thickness: 1.v))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 20.h, top: 7.v, bottom: 12.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Timing",
                                      style: theme.textTheme.labelMedium),
                                  Text("01 : 00 pm - 01 : 15 pm",
                                      style: CustomTextStyles
                                          .plusJakartaSansBlack900)
                                ])),
                        Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: SizedBox(
                                height: 43.v,
                                child: VerticalDivider(
                                    width: 1.h, thickness: 1.v))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 12.h, top: 3.v, bottom: 10.v),
                            child: _buildEnalaprilPills(context,
                                intakeText: "Intake", fourFifteenText: "6/20"))
                      ])),
              SizedBox(height: 4.v),
              Align(
                  alignment: Alignment.center,
                  child: Divider(
                      color: appTheme.gray300.withOpacity(0.6),
                      indent: 8.h,
                      endIndent: 12.h)),
              SizedBox(height: 7.v),
              Padding(
                  padding: EdgeInsets.only(right: 26.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgPills,
                            height: 27.v,
                            width: 29.h,
                            margin: EdgeInsets.only(bottom: 16.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h, bottom: 16.v),
                            child: _buildVitaminCPills(context,
                                vitaminCName: "Vitamin C",
                                pillCount: "1 PILL")),
                        Spacer(),
                        SizedBox(
                            height: 43.v,
                            child: VerticalDivider(width: 1.h, thickness: 1.v)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 20.h, top: 3.v, bottom: 16.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Timing",
                                      style: theme.textTheme.labelMedium),
                                  Text("06 : 00 pm - 06 : 15 pm",
                                      style: CustomTextStyles
                                          .plusJakartaSansBlack900)
                                ])),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: SizedBox(
                                height: 43.v,
                                child: VerticalDivider(
                                    width: 1.h, thickness: 1.v))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 12.h, top: 2.v, bottom: 11.v),
                            child: _buildEnalaprilPills(context,
                                intakeText: "Intake", fourFifteenText: "9/12"))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildDoctorReviews(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 7.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgPills,
                            height: 27.v,
                            width: 29.h,
                            margin: EdgeInsets.only(top: 7.v, bottom: 9.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 8.h, bottom: 19.v),
                            child: _buildDermatologistPills(context,
                                userImage: "Dr. Anup Bhattac...",
                                specialty: "Dermatologist")),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: SizedBox(
                                height: 43.v,
                                child: VerticalDivider(
                                    width: 1.h, thickness: 1.v))),
                        Spacer(flex: 47),
                        Padding(
                            padding: EdgeInsets.only(bottom: 6.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Timing",
                                      style: theme.textTheme.labelMedium),
                                  Text("8.00 am - 8.15 am",
                                      style: CustomTextStyles
                                          .plusJakartaSansBlack900),
                                  SizedBox(height: 3.v),
                                  Text("8.00 pm - 8.15 pm",
                                      style: CustomTextStyles
                                          .plusJakartaSansBlack900)
                                ])),
                        Spacer(flex: 52),
                        Container(
                            height: 11.adaptSize,
                            width: 11.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 16.v),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgRightArrow1,
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  alignment: Alignment.center),
                              Opacity(
                                  opacity: 0.4,
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 11.adaptSize,
                                          width: 11.adaptSize,
                                          decoration: BoxDecoration(
                                              color: appTheme.blueGray1007e,
                                              borderRadius:
                                                  BorderRadius.circular(5.h)))))
                            ]))
                      ])),
              SizedBox(height: 12.v),
              Divider(
                  color: appTheme.gray300.withOpacity(0.6),
                  indent: 15.h,
                  endIndent: 5.h),
              SizedBox(height: 4.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgPills,
                            height: 27.v,
                            width: 29.h,
                            margin: EdgeInsets.only(top: 2.v, bottom: 15.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 8.h, bottom: 21.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text("Dr.Sunita Das",
                                          style: theme.textTheme.labelMedium)),
                                  Text("Gynecologist",
                                      style: CustomTextStyles
                                          .plusJakartaSansBlack900)
                                ])),
                        Spacer(flex: 32),
                        SizedBox(
                            height: 43.v,
                            child: VerticalDivider(width: 1.h, thickness: 1.v)),
                        Spacer(flex: 31),
                        Padding(
                            padding: EdgeInsets.only(top: 6.v, bottom: 15.v),
                            child: _buildAnupBhattacPills(context,
                                timingText: "Timing",
                                timeText: "8.00 am - 8.15 am")),
                        Spacer(flex: 35),
                        Container(
                            height: 11.adaptSize,
                            width: 11.adaptSize,
                            margin: EdgeInsets.only(top: 13.v, bottom: 20.v),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgRightArrow1,
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  alignment: Alignment.center),
                              Opacity(
                                  opacity: 0.4,
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 11.adaptSize,
                                          width: 11.adaptSize,
                                          decoration: BoxDecoration(
                                              color: appTheme.blueGray1007e,
                                              borderRadius:
                                                  BorderRadius.circular(5.h)))))
                            ]))
                      ])),
              SizedBox(height: 8.v),
              Divider(
                  color: appTheme.gray300.withOpacity(0.6),
                  indent: 16.h,
                  endIndent: 4.h),
              SizedBox(height: 5.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgPills,
                            height: 27.v,
                            width: 29.h,
                            margin: EdgeInsets.only(bottom: 15.v)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 4.v, bottom: 15.v),
                            child: _buildDermatologistPills(context,
                                userImage: "Dr. Anup Bhattac...",
                                specialty: "Dermatologist")),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: SizedBox(
                                height: 43.v,
                                child: VerticalDivider(
                                    width: 1.h, thickness: 1.v))),
                        Spacer(flex: 46),
                        Padding(
                            padding: EdgeInsets.only(top: 5.v, bottom: 15.v),
                            child: _buildAnupBhattacPills(context,
                                timingText: "Timing",
                                timeText: "8.00 am - 8.15 am")),
                        Spacer(flex: 53),
                        Container(
                            height: 11.adaptSize,
                            width: 11.adaptSize,
                            margin: EdgeInsets.only(top: 6.v, bottom: 26.v),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgRightArrow1,
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  alignment: Alignment.center),
                              Opacity(
                                  opacity: 0.4,
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 11.adaptSize,
                                          width: 11.adaptSize,
                                          decoration: BoxDecoration(
                                              color: appTheme.blueGray1007e,
                                              borderRadius:
                                                  BorderRadius.circular(5.h)))))
                            ]))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: appTheme.whiteA700),
        child: CustomImageView(
            imagePath: ImageConstant.imgGroup19,
            height: 24.v,
            width: 316.h,
            margin: EdgeInsets.fromLTRB(30.h, 28.v, 29.h, 27.v)));
  }

  /// Common widget
  Widget _buildEnalaprilPills(
    BuildContext context, {
    required String intakeText,
    required String fourFifteenText,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(intakeText,
          style:
              theme.textTheme.labelMedium!.copyWith(color: appTheme.black900)),
      SizedBox(height: 3.v),
      Text(fourFifteenText,
          style: theme.textTheme.bodySmall!.copyWith(color: appTheme.black900))
    ]);
  }

  /// Common widget
  Widget _buildVitaminCPills(
    BuildContext context, {
    required String vitaminCName,
    required String pillCount,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(vitaminCName,
          style:
              theme.textTheme.labelMedium!.copyWith(color: appTheme.black900)),
      SizedBox(height: 4.v),
      Text(pillCount,
          style: CustomTextStyles.plusJakartaSansBlack900
              .copyWith(color: appTheme.black900))
    ]);
  }

  /// Common widget
  Widget _buildDermatologistPills(
    BuildContext context, {
    required String userImage,
    required String specialty,
  }) {
    return SizedBox(
        height: 21.v,
        width: 95.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Text(userImage,
                  style: theme.textTheme.labelMedium!
                      .copyWith(color: appTheme.black900))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Text(specialty,
                  style: CustomTextStyles.plusJakartaSansBlack900
                      .copyWith(color: appTheme.black900)))
        ]));
  }

  /// Common widget
  Widget _buildAnupBhattacPills(
    BuildContext context, {
    required String timingText,
    required String timeText,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(timingText,
          style:
              theme.textTheme.labelMedium!.copyWith(color: appTheme.black900)),
      Text(timeText,
          style: CustomTextStyles.plusJakartaSansBlack900
              .copyWith(color: appTheme.black900))
    ]);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapIconChevronLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
