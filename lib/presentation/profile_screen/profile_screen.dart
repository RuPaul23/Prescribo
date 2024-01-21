import '../profile_screen/widgets/heartratetext_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/app_bar/custom_app_bar.dart';
import 'package:prescribo/widgets/custom_icon_button.dart';
import 'package:prescribo/presentation/log_out_pop_up_dialog/log_out_pop_up_dialog.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0, 0.47),
                        colors: [theme.colorScheme.primary, appTheme.teal400])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          _buildHeartRateStack(context),
                          SizedBox(height: 41.v),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.h, vertical: 31.v),
                              decoration: AppDecoration.fillWhiteA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL30),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildAppointmentRow(context,
                                        appointment: "Prescription"),
                                    SizedBox(height: 13.v),
                                    Divider(color: appTheme.blueGray50),
                                    SizedBox(height: 13.v),
                                    _buildAppointmentRow(context,
                                        appointment: "Appointment"),
                                    SizedBox(height: 13.v),
                                    Divider(color: appTheme.blueGray50),
                                    SizedBox(height: 13.v),
                                    _buildAppointmentRow(context,
                                        appointment: "Payment Method"),
                                    SizedBox(height: 13.v),
                                    Divider(color: appTheme.blueGray50),
                                    SizedBox(height: 13.v),
                                    _buildAppointmentRow(context,
                                        appointment: "FAQs"),
                                    SizedBox(height: 13.v),
                                    Divider(color: appTheme.blueGray50),
                                    SizedBox(height: 13.v),
                                    _buildAppointmentRow(context,
                                        appointment: "Logout",
                                        onTapAppointmentRow: () {
                                      onTapAppointmentRow(context);
                                    }),
                                    SizedBox(height: 5.v)
                                  ]))
                        ]))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildHeartRateStack(BuildContext context) {
    return SizedBox(
        height: 267.v,
        width: 333.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(
                  height: 267.v,
                  child: ListView.separated(
                      padding: EdgeInsets.only(top: 195.v, right: 43.h),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.5.h),
                            child: SizedBox(
                                height: 44.v,
                                child: VerticalDivider(
                                    width: 1.h,
                                    thickness: 1.v,
                                    color: appTheme.cyan100)));
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return HeartratetextItemWidget();
                      }))),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 82.h, top: 44.v, right: 126.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                        height: 80.adaptSize,
                        width: 80.adaptSize,
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse27,
                              height: 80.adaptSize,
                              width: 80.adaptSize,
                              radius: BorderRadius.circular(40.h),
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  margin:
                                      EdgeInsets.only(right: 4.h, bottom: 5.v),
                                  padding: EdgeInsets.all(3.h),
                                  decoration: AppDecoration.fillWhiteA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgCamera,
                                      height: 10.adaptSize,
                                      width: 10.adaptSize,
                                      alignment: Alignment.center)))
                        ])),
                    SizedBox(height: 19.v),
                    Text("Amelia Renata", style: CustomTextStyles.titleMedium18)
                  ]))),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  margin: EdgeInsets.only(left: 74.h),
                  padding: EdgeInsets.symmetric(vertical: 25.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup33),
                          fit: BoxFit.cover)),
                  child: CustomAppBar(height: 16.v, actions: [
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: Column(children: [
                          Container(
                              height: 4.adaptSize,
                              width: 4.adaptSize,
                              decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(2.h))),
                          SizedBox(height: 2.v),
                          Container(
                              height: 4.adaptSize,
                              width: 4.adaptSize,
                              decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(2.h))),
                          SizedBox(height: 2.v),
                          Container(
                              height: 4.adaptSize,
                              width: 4.adaptSize,
                              decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(2.h)))
                        ]))
                  ])))
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
  Widget _buildAppointmentRow(
    BuildContext context, {
    required String appointment,
    Function? onTapAppointmentRow,
  }) {
    return GestureDetector(
        onTap: () {
          onTapAppointmentRow!.call();
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomIconButton(
              height: 43.adaptSize,
              width: 43.adaptSize,
              padding: EdgeInsets.all(9.h),
              child: CustomImageView(imagePath: ImageConstant.imgUserPrimary)),
          Padding(
              padding: EdgeInsets.only(left: 18.h, top: 12.v, bottom: 10.v),
              child: Text(appointment,
                  style: CustomTextStyles.titleMediumGray900_1
                      .copyWith(color: appTheme.gray900))),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 10.v, bottom: 9.v))
        ]));
  }

  /// Displays a dialog with the [LogOutPopUpDialog] content.
  onTapAppointmentRow(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: LogOutPopUpDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
