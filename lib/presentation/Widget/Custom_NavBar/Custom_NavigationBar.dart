import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/presentation/Home%20Screens/CalendarPage/Calender_page.dart';
import 'package:prescribo/presentation/Home%20Screens/LandingPage/Landing_page.dart';
import 'package:prescribo/presentation/Home%20Screens/PrescriptionPage/Prescription_page.dart';
import 'package:prescribo/presentation/Home%20Screens/Profile/Profile_page.dart';
import 'package:prescribo/presentation/Home%20Screens/Scanner%20Page/Camera_Screen.dart';
import 'package:prescribo/utils_new/constants/colors.dart';
import 'package:prescribo/utils_new/helpers/helper_functions.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = CustomHelperFunctions.isDarkMode(context);

    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            height: 65,
            backgroundColor: darkMode? CustomColors.black : CustomColors.white,
            indicatorColor: darkMode? CustomColors.white.withOpacity(0.1) : CustomColors.black.withOpacity(0.1),
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            animationDuration: Duration(milliseconds: 500),
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
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
        body: Obx((() => controller.screens[controller.selectedIndex.value])));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    LandingPage(),
    PrescriptionPage(),
    CameraScreen(),
    //ScannerPage(),
    CalendarPage(),
    ProfileScreen(),
  ];
}
