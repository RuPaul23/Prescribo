import 'package:flutter/material.dart';
import 'package:prescribo/features/authentication/screens/onboardingPage/widget/onboarding_controller.dart';
import 'package:prescribo/utils_new/constants/sizes.dart';
import 'package:prescribo/utils_new/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top: CustomDeviceUtils.getAppBarHeight(), right:CustomSizes.defaultSpace,
     child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(), child: const Text('Skip'),));
  }
}