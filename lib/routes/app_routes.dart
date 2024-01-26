import 'package:flutter/material.dart';
import 'package:prescribo/NavigationBar/Page/Landing_page.dart';
import 'package:prescribo/presentation/remainder_screen/remainder_screen.dart';
import 'package:prescribo/presentation/splash_screen/splash_screen.dart';
import 'package:prescribo/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:prescribo/presentation/login_screen/login_screen.dart';
import 'package:prescribo/presentation/login_wrong_password_screen/login_wrong_password_screen.dart';
import 'package:prescribo/presentation/login_correct_password_screen/login_correct_password_screen.dart';
import 'package:prescribo/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:prescribo/presentation/sign_up_active_screen/sign_up_active_screen.dart';
import 'package:prescribo/presentation/sign_up_correct_password_screen/sign_up_correct_password_screen.dart';
import 'package:prescribo/presentation/reset_password_phone_tab_container_screen/reset_password_phone_tab_container_screen.dart';
import 'package:prescribo/presentation/reset_password_verify_code_screen/reset_password_verify_code_screen.dart';
import 'package:prescribo/presentation/create_new_password_screen/create_new_password_screen.dart';
import 'package:prescribo/NavigationBar/Custom_NavigationBar.dart';
import 'package:prescribo/presentation/articles_screen/articles_screen.dart';
import 'package:prescribo/NavigationBar/precription_screen/precription_screen.dart';
import 'package:prescribo/NavigationBar/profile_screen/profile_screen.dart';
import 'package:prescribo/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String loginScreen = '/login_screen';

  static const String loginWrongPasswordScreen = '/login_wrong_password_screen';

  static const String loginCorrectPasswordScreen =
      '/login_correct_password_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signUpActiveScreen = '/sign_up_active_screen';

  static const String signUpCorrectPasswordScreen =
      '/sign_up_correct_password_screen';

  static const String resetPasswordEmailPage = '/reset_password_email_page';

  static const String resetPasswordPhonePage = '/reset_password_phone_page';

  static const String resetPasswordPhoneTabContainerScreen =
      '/reset_password_phone_tab_container_screen';

  static const String resetPasswordVerifyCodeScreen =
      '/reset_password_verify_code_screen';

  static const String createNewPasswordScreen = '/create_new_password_screen';

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

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    onboardingScreen: (context) => OnboardingScreen(),
    loginScreen: (context) => LoginScreen(),
    loginWrongPasswordScreen: (context) => LoginWrongPasswordScreen(),
    loginCorrectPasswordScreen: (context) => LoginCorrectPasswordScreen(),
    signUpScreen: (context) => SignUpScreen(),
    signUpActiveScreen: (context) => SignUpActiveScreen(),
    signUpCorrectPasswordScreen: (context) => SignUpCorrectPasswordScreen(),
    resetPasswordPhoneTabContainerScreen: (context) =>
        ResetPasswordPhoneTabContainerScreen(),
    resetPasswordVerifyCodeScreen: (context) => ResetPasswordVerifyCodeScreen(),
    createNewPasswordScreen: (context) => CreateNewPasswordScreen(),
    Landingpage: (context) => LandingPage(),
    CustomNavBar:(context) => CustomnavigationBar(),
    //consultScreen: (context) => ConsultScreen(),
    articlesScreen: (context) => ArticlesScreen(),
    remainderScreen: (context) => RemainderScreen(),
    precriptionScreen: (context) => PrecriptionScreen(),
    //scannerScreen: (context) => ScannerScreen(),
    profileScreen: (context) => ProfileScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}


