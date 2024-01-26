import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/NavigationBar/home_screen/home_screen.dart';
import 'package:prescribo/NavigationBar/profile_screen/profile_screen.dart';
import 'package:prescribo/presentation/remainder_screen/remainder_screen.dart';
import 'package:prescribo/widgets/app_bar/appbar_leading_image.dart';
import 'package:prescribo/widgets/app_bar/appbar_subtitle.dart';
import 'package:prescribo/widgets/app_bar/appbar_trailing_image.dart';
import 'package:prescribo/widgets/app_bar/custom_app_bar.dart';
import 'package:prescribo/widgets/custom_search_view.dart';
//import 'package:prescribo/widgets/navigation_bar.dart';

import '../precription_screen/widgets/userprofile1_item_widget.dart';

class PrecriptionScreen extends StatefulWidget {
  PrecriptionScreen({Key? key}) : super(key: key);

  @override
  _PrecriptionScreenState createState() => _PrecriptionScreenState();
}

class _PrecriptionScreenState extends State<PrecriptionScreen> {
  TextEditingController searchController = TextEditingController();
  int _selectedIndex = 1; // default to the prescription screen

  final List<Widget> screens = [
    /*HomeScreen(),
    PrecriptionScreen(),
    ScannerScreen(),
    RemainderScreen(),
    ProfileScreen(),*/
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5, right: 8),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Search Prescription",
                ),
              ),
              SizedBox(height: 11),
              _buildNinetySix(context),
              SizedBox(height: 17),
              _buildUserProfile(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 63,
      leadingWidth: 51,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconChevronLeft,
        margin: EdgeInsets.only(left: 27, top: 15, bottom: 16),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Prescription",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgComponent1,
          margin: EdgeInsets.fromLTRB(29, 19, 29, 20),
        ),
      ],
    );
  }

  Widget _buildNinetySix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 11, right: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              "Sort By",
              style: CustomTextStyles.titleMediumBlack900,
            ),
          ),
          SizedBox(width: 5),
          // Add your Sort By arrow down sign here
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Text(
              "Filter",
              style: CustomTextStyles.titleMediumBlack900,
            ),
          ),
          SizedBox(width: 8),
          // Add your Filter arrow down sign here
        ],
      ),
    );
  }

  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 12);
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return Userprofile1ItemWidget();
        },
      ),
    );
  }

  // Bottom Navigation Bar
  Widget _buildBottomBar(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: Color.fromARGB(60, 0, 102, 204),
        labelTextStyle: MaterialStateProperty.all(
          TextStyle(
            fontFamily: 'GoogleFonts.inter().fontFamily',
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
            // No need to navigate here, the bottom navigation bar handles the navigation
          });
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
    );
  }
}
