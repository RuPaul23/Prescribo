import 'package:flutter/material.dart';
import 'package:prescribo/Main%20Presentation/Home%20Screens/CalendarPage/Calender_page.dart';
import 'package:prescribo/Main%20Presentation/Home%20Screens/LandingPage/Landing_page.dart';
import 'package:prescribo/Main%20Presentation/Home%20Screens/PrescriptionPage/Prescription_page.dart';
import 'package:prescribo/Main%20Presentation/Home%20Screens/Profile/Profile_page.dart';
import 'package:prescribo/Main%20Presentation/StartScreen/LogIn/login_Page.dart';
import 'package:prescribo/Main%20Presentation/StartScreen/Onboarding%20Page/OnBoardingPage.dart';
import 'package:prescribo/Main%20Presentation/StartScreen/SplashScreen/splash_screen.dart';
import 'package:prescribo/Main%20Presentation/Widget/Custom_NavBar/Custom_NavigationBar.dart';

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
    splashScreen: (context) => SplashScreen(),
    Onboardingpage: (context) => OnBoardingPage(),
    loginPage: (context) => LoginPage(),
    Landingpage: (context) => LandingPage(),
    CustomNavBar:(context) => CustomnavigationBar(),
    remainderScreen: (context) => CalendarPage(),
    precriptionScreen: (context) => PrescriptionPage(),
    profileScreen: (context) => ProfileScreen(),
  };
}


