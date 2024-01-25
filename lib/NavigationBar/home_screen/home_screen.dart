import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/NavigationBar/consult_screen/consult_screen.dart';
import 'package:prescribo/NavigationBar/home_screen/widgets/homelist_item_widget.dart';
import 'package:prescribo/NavigationBar/precription_screen/precription_screen.dart';
import 'package:prescribo/NavigationBar/profile_screen/profile_screen.dart';
import 'package:prescribo/NavigationBar/remainder_screen/remainder_screen.dart';
import 'package:prescribo/presentation/scanner_screen/scanner_screen.dart';
import 'package:prescribo/widgets/app_bar/appbar_title.dart';
import 'package:prescribo/widgets/app_bar/appbar_trailing_image.dart';
import 'package:prescribo/widgets/app_bar/custom_app_bar.dart';
import 'package:prescribo/widgets/custom_elevated_button.dart';
import 'package:prescribo/widgets/custom_image_view.dart';
import 'package:prescribo/widgets/custom_search_view.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    PrecriptionScreen(),
    ScannerScreen(),
    RemainderScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          //width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 13.h),
          child: Column(
            children: [
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(left: 12.h, right: 13.h),
                child: CustomSearchView(
                  controller: TextEditingController(),
                  hintText: "Search doctor, drugs, articles...",
                ),
              ),
              SizedBox(height: 18.v),
              _buildHomeList(context),
              SizedBox(height: 9.v),
              _buildCtaStack(context),
              SizedBox(height: 2.v),
              _buildTextRow(context),
              SizedBox(height: 13.v),
              _buildPillsWhiteRow(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 65.v,
      title: AppbarTitle(
        text: "prescribo",
        margin: EdgeInsets.only(left: 24.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(22.h, 14.v, 22.h, 17.v),
        ),
      ],
    );
  }

//Prescription; Order; Consult; Category
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
          String imagePath;
          switch (index) {
            case 0:
              imagePath = ImageConstant.imgPrescription;
              break;
            case 1:
              imagePath = ImageConstant.imgOrder;
              break;
            case 2:
              imagePath = ImageConstant.imgDoctor;
              break;
            case 3:
              imagePath = ImageConstant.imgCategory;
              break;
            default:
              imagePath = '';
          }

          return HomelistItemWidget(
            imagePath: imagePath,
            onTapList: () {
              // Navigate to different screens based on the index
              switch (index) {
                case 0:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PrecriptionScreen(),
                    ),
                  );
                  break;
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PrecriptionScreen(),
                    ),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConsultScreen(),
                    ),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConsultScreen(),
                    ),
                  );
                  break;
                default:
              }
            },
          );
        },
      ),
    );
  }


//Banner of Prescribo Widget
  Widget _buildCtaStack(BuildContext context) {
    return SizedBox(
      height: 161.v,
      width: 342.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 10.v, right: 7.h),
              padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 20.v),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  Text(
                    "Why prescribo?",
                    style: CustomTextStyles.titleMediumGray900,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "Go Paperless Prescription",
                    style: CustomTextStyles.labelMediumInterGray900,
                  ),
                  SizedBox(height: 19.v),
                  CustomElevatedButton(
                    height: 29.v,
                    width: 97.h,
                    text: "Use Now",
                    buttonStyle: CustomButtonStyles.fillPrimaryTL14,
                    buttonTextStyle: CustomTextStyles.labelLargeWhiteA700,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMedicalPrescriptionRafiki,
            height: 161.adaptSize,
            width: 161.adaptSize,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }


//Current Remainder Widget
  Widget _buildTextRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Current Remainder",
            style: CustomTextStyles.titleMediumGray900_1,
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "See all",
              style: CustomTextStyles.bodySmallInterPrimary,
            ),
          ),
        ],
      ),
    );
  }


//Pills Remainder Widget
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
            margin: EdgeInsets.only(bottom: 11.v),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 8.v),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPillsWhite,
                            height: 35.adaptSize,
                            width: 35.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "08 : 30 AM",
                                style: CustomTextStyles
                                    .labelLargeWhiteA700SemiBold,
                              ),
                              SizedBox(height: 7.v),
                              Text(
                                "Vitamin C",
                                style: CustomTextStyles
                                    .labelLargeWhiteA700SemiBold,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: _buildTickOne(
                        context,
                        tickImage: ImageConstant.imgTick11,
                        doseText: "5 Dose",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13.v),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 10.v),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPills1,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            margin: EdgeInsets.only(top: 3.v, bottom: 2.v),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "02 : 45 PM",
                                style: CustomTextStyles.labelLargePrimary,
                              ),
                              SizedBox(height: 6.v),
                              Text(
                                "Vitamin A",
                                style: CustomTextStyles.labelLargePrimary,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h, right: 22.h),
                      child: _buildTickOne(
                        context,
                        tickImage: ImageConstant.imgTick1,
                        doseText: "1 Dose",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }


//Tick Widget
  Widget _buildTickOne(BuildContext context,
      {required String tickImage, required String doseText}) {
    return SizedBox(
      width: 77.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: tickImage,
            height: 15.adaptSize,
            width: 15.adaptSize,
          ),
          Text(
            doseText,
            style: CustomTextStyles.labelLargePrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }


//Navigation bar Widget
  Widget _buildBottomBar(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: Color.fromARGB(60, 0, 102, 204),
        labelTextStyle: MaterialStateProperty.all(
          TextStyle(
            fontFamily: GoogleFonts.inter().fontFamily,
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
      child: NavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        animationDuration: Duration(milliseconds: 500),
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => _screens[
                    index], // Navigate to the selected screen from _screens list
              ),
            );
          });
        },
        destinations: [
          NavigationDestination(
            icon: Image.asset(ImageConstant.imgHomeBar),
            //selectedIcon: Image.asset(ImageConstant.imgHomeBarSelected), ->>>>>>>>> Designed for selected icon
            label: 'Home',
          ),
          NavigationDestination(
            icon: Image.asset(ImageConstant.imgPrescriptionBar),
            //selectedIcon: Image.asset(ImageConstant.imgPrescriptionBarSelected), ->>>>>>>>> Designed for selected icon
            label: 'Prescription',
          ),
          NavigationDestination(
            icon: Image.asset(ImageConstant.imgScanner),
            //selectedIcon: Image.asset(ImageConstant.imgScannerSelected), ->>>>>>>>> Designed for selected icon
            label: 'Scanner',
          ),
          NavigationDestination(
            icon: Image.asset(ImageConstant.imgCalenderBar),
            //selectedIcon: Image.asset(ImageConstant.imgCalenderBarSelected), ->>>>>>>>> Designed for selected icon
            label: 'Calendar',
          ),
          NavigationDestination(
            icon: Image.asset(ImageConstant.imgProfile),
            //selectedIcon: Image.asset(ImageConstant.imgProfileSelected), ->>>>>>>>> Designed for selected icon
            label: 'Profile',
          ),
        ],
      ),
    );
  }






}
