import 'package:flutter/material.dart';
import 'package:prescribo/features/authentication/screens/loginPage/login_Page.dart';
import 'package:prescribo/features/authentication/screens/onboardingPage/onboarding.dart';
import 'package:prescribo/presentation/Home%20Screens/CalendarPage/Calender_page.dart';
import 'package:prescribo/presentation/Home%20Screens/LandingPage/Landing_page.dart';
import 'package:prescribo/presentation/Home%20Screens/PrescriptionPage/Prescription_page.dart';
import 'package:prescribo/presentation/Home%20Screens/Profile/Profile_page.dart';
import 'package:prescribo/presentation/Widget/Custom_NavBar/Custom_NavigationBar.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String loginPage = '/login_page';

  static const String homeScreen = '/home_screen';

  static const String consultScreen = '/consult_screen';

  static const String articlesScreen = '/articles_screen';

  static const String remainderScreen = '/remainder_screen';

  static const String precriptionScreen = '/precription_screen';

  static const String scannerScreen = '/scanner_screen';

  static const String profileScreen = '/profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String CustomNavBar = '/CustomNavBar';

  static const String Landingpage = '/Landingpage';

  static const String Onboardingpage = '/OnBoardingPage';

  static Map<String, WidgetBuilder> routes = {
    Onboardingpage: (context) => OnBoardingPage(),
    loginPage: (context) => LoginPage(),
    Landingpage: (context) => LandingPage(),
    CustomNavBar:(context) => CustomnavigationBar(),
    remainderScreen: (context) => CalendarPage(),
    precriptionScreen: (context) => PrescriptionPage(),
    profileScreen: (context) => ProfileScreen(),
  };
}


