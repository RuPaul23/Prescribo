import 'package:flutter/material.dart';
import 'package:prescribo/features/authentication/screens/onboardingPage/widget/onboarding_controller.dart';
import 'package:prescribo/utils_new/constants/colors.dart';
import 'package:prescribo/utils_new/constants/sizes.dart';
import 'package:prescribo/utils_new/device/device_utility.dart';
import 'package:prescribo/utils_new/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark=CustomHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: CustomDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: CustomSizes.defaultSpace,
      child: SmoothPageIndicator(controller: controller.pageController, count:3,onDotClicked: controller.dotNavigationClick,
      effect: ExpandingDotsEffect(activeDotColor: dark? CustomColors.light : CustomColors.dark, dotHeight: 6),
      ),
    );
  }
}
