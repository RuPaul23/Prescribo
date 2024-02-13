import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prescribo/features/authentication/screens/loginPage/login_Page.dart';
import 'package:prescribo/utils_new/constants/image_strings.dart';
import 'package:prescribo/utils_new/constants/sizes.dart';
import 'package:prescribo/utils_new/constants/text_strings.dart';
import 'package:prescribo/utils_new/helpers/helper_functions.dart';
import 'package:prescribo/utils_new/styles/spacing_style.dart';

class SuceessPage extends StatelessWidget {
  const SuceessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: CustomSpacingStyle.paddingWithAppBarHeight * 2,
        child: Column(
          children: [
            //Image
            Image(
              image: const AssetImage(CustomImages.staticSuccessIllustration),
              width: CustomHelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(height: CustomSizes.spaceBtwItems),

            //Text and SubTitle
            Text(CustomTexts.yourAccountCreatedTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(
              height: CustomSizes.spaceBtwItems,
            ),
            Text(CustomTexts.yourAccountCreatedSubTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center),
            const SizedBox(
              height: CustomSizes.spaceBtwItems,
            ),
            Text(CustomTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center),
            const SizedBox(
              height: CustomSizes.spaceBtwItems,
            ),

            //Buttons
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () =>Get.to(()=> const LoginPage()),
                    child: const Text(CustomTexts.tContinue))),
            const SizedBox(height: CustomSizes.spaceBtwItems),
          ],
        ),
      ),
    ));
  }
}
