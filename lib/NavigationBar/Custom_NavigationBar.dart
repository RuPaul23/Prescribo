import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prescribo/NavigationBar/Page/Calender_page.dart';
import 'package:prescribo/NavigationBar/Page/Landing_page.dart';
import 'package:prescribo/NavigationBar/Page/Prescription_page.dart';
import 'package:prescribo/NavigationBar/Page/Profile_page.dart';
import 'package:prescribo/NavigationBar/Page/Scanner_page.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/NavigationBar/home_screen/widgets/homelist_item_widget.dart';
import 'package:prescribo/NavigationBar/precription_screen/precription_screen.dart';
import 'package:prescribo/widgets/app_bar/appbar_title.dart';
import 'package:prescribo/widgets/app_bar/appbar_trailing_image.dart';
import 'package:prescribo/widgets/app_bar/custom_app_bar.dart';
import 'package:prescribo/widgets/custom_elevated_button.dart';
import 'package:prescribo/widgets/custom_search_view.dart';

class CustomnavigationBar extends StatefulWidget {
  const CustomnavigationBar({Key? key}) : super(key: key);

  @override
  CustomNavigationState createState() => CustomNavigationState();
}

class CustomNavigationState extends State<CustomnavigationBar> {
  int index = 0;

  final List<Widget> screens = [
    LandingPage(),
    PrescriptionPage(),
    ScannerPage(),
    CalendarPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: Column(
            children: [
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.only(left: 12, right: 13),
                child: CustomSearchView(
                  controller: TextEditingController(),
                  hintText: "Search doctor, drugs, articles...",
                ),
              ),
              SizedBox(height: 18),
              _buildHomeList(context),
              SizedBox(height: 9),
              _buildCtaStack(context),
              SizedBox(height: 2),
              _buildTextRow(context),
              SizedBox(height: 13),
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
      height: 65,
      title: AppbarTitle(
        text: "prescribo",
        margin: EdgeInsets.only(left: 24),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(22, 14, 22, 17),
        ),
      ],
    );
  }

  Widget _buildHomeList(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 13),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(width: 18);
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
                case 1:
                case 2:
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PrecriptionScreen(),
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

  Widget _buildCtaStack(BuildContext context) {
    return SizedBox(
      height: 161,
      width: 342,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 10, right: 7),
              padding: EdgeInsets.symmetric(horizontal: 26, vertical: 20),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3),
                  Text(
                    "Why prescribo?",
                    style: CustomTextStyles.titleMediumGray900,
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Go Paperless Prescription",
                    style: CustomTextStyles.labelMediumInterGray900,
                  ),
                  SizedBox(height: 19),
                  CustomElevatedButton(
                    height: 29,
                    width: 97,
                    text: "Use Now",
                    buttonStyle: CustomButtonStyles.fillPrimaryTL14,
                    buttonTextStyle: CustomTextStyles.labelLargeWhiteA700,
                  ),
                ],
              ),
            ),
          ),
          // CustomImageView(
          //   imagePath: ImageConstant.imgMedicalPrescriptionRafiki,
          //   height: 161.adaptSize,
          //   width: 161.adaptSize,
          //   alignment: Alignment.centerRight,
          // ),
        ],
      ),
    );
  }

  Widget _buildTextRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Current Remainder",
            style: CustomTextStyles.titleMediumGray900_1,
          ),
          Padding(
            padding: EdgeInsets.only(top: 3),
            child: Text(
              "See all",
              style: CustomTextStyles.bodySmallInterPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPillsWhiteRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // CustomImageView(
          //   imagePath: ImageConstant.imgMedicalPrescriptionPana,
          //   height: 168.adaptSize,
          //   width: 168.adaptSize,
          //   margin: EdgeInsets.only(bottom: 11),
          // ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 19, vertical: 8),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 4),
                    Container(
                      width: 110,
                      margin: EdgeInsets.only(right: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // CustomImageView(
                          //   imagePath: ImageConstant.imgPillsWhite,
                          //   height: 35.adaptSize,
                          //   width: 35.adaptSize,
                          //   margin: EdgeInsets.only(bottom: 2),
                          // ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "08 : 30 AM",
                                style: CustomTextStyles.labelLargeWhiteA700SemiBold,
                              ),
                              SizedBox(height: 7),
                              Text(
                                "Vitamin C",
                                style: CustomTextStyles.labelLargeWhiteA700SemiBold,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: _buildTickOne(
                        context,
                        tickImage: ImageConstant.imgTick11,
                        doseText: "5 Dose",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 21, vertical: 10),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2),
                    Container(
                      width: 106,
                      margin: EdgeInsets.only(left: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // CustomImageView(
                          //   imagePath: ImageConstant.imgPills1,
                          //   height: 30.adaptSize,
                          //   width: 30.adaptSize,
                          //   margin: EdgeInsets.only(top: 3, bottom: 2),
                          // ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "02 : 45 PM",
                                style: CustomTextStyles.labelLargePrimary,
                              ),
                              SizedBox(height: 6),
                              Text(
                                "Vitamin A",
                                style: CustomTextStyles.labelLargePrimary,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7),
                    Padding(
                      padding: EdgeInsets.only(left: 8, right: 22),
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

  Widget _buildTickOne(BuildContext context,
      {required String tickImage, required String doseText}) {
    return SizedBox(
      width: 77,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // CustomImageView(
          //   imagePath: tickImage,
          //   height: 15.adaptSize,
          //   width: 15.adaptSize,
          // ),
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

  Widget _buildBottomBar(BuildContext context) => Scaffold(
    body: screens[index],
    bottomNavigationBar: NavigationBarTheme(
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
        selectedIndex: index,
        onDestinationSelected: (index) {
          setState(() => this.index = index);
        },
        destinations: [
          NavigationDestination(
            icon: Image.asset(ImageConstant.imgHomeBar),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Image.asset(ImageConstant.imgPrescriptionBar),
            label: 'Prescription',
          ),
          NavigationDestination(
            icon: Image.asset(ImageConstant.imgScanner),
            label: 'Scanner',
          ),
          NavigationDestination(
            icon: Image.asset(ImageConstant.imgCalenderBar),
            label: 'Calendar',
          ),
          NavigationDestination(
            icon: Image.asset(ImageConstant.imgProfile),
            label: 'Profile',
          ),
        ],
      ),
    ),
  );
}
