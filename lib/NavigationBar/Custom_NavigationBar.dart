import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prescribo/NavigationBar/Page/Calender_page.dart';
import 'package:prescribo/NavigationBar/Page/Landing_page.dart';
import 'package:prescribo/NavigationBar/Page/Prescription_page.dart';
import 'package:prescribo/NavigationBar/Page/Profile_page.dart';
import 'package:prescribo/NavigationBar/Page/Scanner_page.dart';
import 'package:prescribo/core/app_export.dart';

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
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

//Navigation Bar Widget
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
