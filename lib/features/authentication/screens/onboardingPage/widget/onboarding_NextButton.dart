
import 'package:flutter/material.dart';
import 'package:prescribo/features/authentication/screens/onboardingPage/widget/onboarding_controller.dart';
import 'package:prescribo/utils_new/constants/colors.dart';
import 'package:prescribo/utils_new/constants/sizes.dart';
import 'package:prescribo/utils_new/device/device_utility.dart';
import 'package:prescribo/utils_new/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);
    return Positioned(
      right: CustomSizes.defaultSpace,
      bottom: CustomDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: ()=> OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark? CustomColors.primary: CustomColors.black),
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
