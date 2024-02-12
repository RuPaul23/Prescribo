import 'package:flutter/material.dart';
import 'package:prescribo/utils_new/constants/image_strings.dart';
import 'package:prescribo/utils_new/constants/sizes.dart';
import 'package:prescribo/utils_new/constants/text_strings.dart';
import 'package:prescribo/utils_new/helpers/helper_functions.dart';


class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
      children: [
        ///Horizonatal Scrollable Pages
        PageView(
          children: [
            Column(
              children: [
                Image(
                width: CustomHelperFunctions.screenWidth()*0.8,
                height: CustomHelperFunctions.screenHeight()*0.6,
                image: AssetImage(CustomImages.onBoardingImage1),
                  ),
                Text(CustomTexts.onBoardingTitle1, style: Theme.of(context).textTheme.headlineMedium),

                const SizedBox(height: CustomSizes.spaceBtwItems),

                Text(CustomTexts.onBoardingSubTitle1, style: Theme.of(context).textTheme.bodyMedium),
                ],
            ),
          ],
        )
      ],
    )
    );
  }
}
