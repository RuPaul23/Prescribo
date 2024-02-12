import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prescribo/features/authentication/screens/onboardingPage/widget/onboarding_DotNavigation.dart';
import 'package:prescribo/features/authentication/screens/onboardingPage/widget/onboarding_NextButton.dart';
import 'package:prescribo/features/authentication/screens/onboardingPage/widget/onboarding_ScrollPage.dart';
import 'package:prescribo/features/authentication/screens/onboardingPage/widget/onboarding_Skip.dart';
import 'package:prescribo/features/authentication/screens/onboardingPage/widget/onboarding_controller.dart';

import 'package:prescribo/utils_new/constants/image_strings.dart';
import 'package:prescribo/utils_new/constants/text_strings.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());


    return Scaffold(
        body: Stack(
      children: [
        ///Horizonatal Scrollable Pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingScrollPage(
                image: CustomImages.onBoardingImage1,
                title: CustomTexts.onBoardingTitle1,
                subTitle: CustomTexts.onBoardingSubTitle1),
            OnBoardingScrollPage(
                image: CustomImages.onBoardingImage2,
                title: CustomTexts.onBoardingTitle2,
                subTitle: CustomTexts.onBoardingSubTitle2),
            OnBoardingScrollPage(
                image: CustomImages.onBoardingImage3,
                title: CustomTexts.onBoardingTitle3,
                subTitle: CustomTexts.onBoardingSubTitle3),
          ],
        ),

        ///Skip Button
        const OnBoardingSkip(),

        ///Dot Page Indicator
        const OnBoardingDotNavigation(),

        ///Next Button
        const OnBoardingNextButton()

      ],
    ));
  }
}
