import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final Function(int) onDestinationSelected;
  final int selectedIndex;

  const CustomBottomNavigationBar({
    Key? key,
    required this.onDestinationSelected,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
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
        selectedIndex: widget.selectedIndex,
        onDestinationSelected: widget.onDestinationSelected,
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
