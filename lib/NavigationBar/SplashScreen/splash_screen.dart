import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Adding a delay before navigating
    Future.delayed(Duration(milliseconds: 5000), () {
      Navigator.pushNamed(context, AppRoutes.Onboardingpage);
    });

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blue100.withOpacity(0.9),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 56.h, vertical: 105.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 55),
              CustomImageView(
                imagePath: ImageConstant.imgLogoNoBackground,
                height: 126.adaptSize,
                width: 262.adaptSize,
              ),
              Spacer(flex: 44),
            ],
          ),
        ),
      ),
    );
  }
}
