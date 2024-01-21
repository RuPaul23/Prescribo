import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "1_Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2. Onboarding ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "6_Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "7_Login - Wrong Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginWrongPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "8_Login - Correct Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginCorrectPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "10_Sign Up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "11_Sign Up - Active",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpActiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "12_Sign Up - Correct Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpCorrectPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "15_Reset Password - Phone - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.resetPasswordPhoneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "16_Reset Password - Verify Code",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.resetPasswordVerifyCodeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "17_Create New Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Consult",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.consultScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Articles",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.articlesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Remainder",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.remainderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Precription",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.precriptionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Scanner",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.scannerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
