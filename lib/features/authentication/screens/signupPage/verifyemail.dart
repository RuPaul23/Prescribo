import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prescribo/features/authentication/screens/loginPage/login_Page.dart';
import 'package:prescribo/features/authentication/screens/signupPage/widget/successPage.dart';
import 'package:prescribo/utils_new/constants/sizes.dart';
import 'package:prescribo/utils_new/constants/text_strings.dart';
import 'package:prescribo/utils_new/helpers/helper_functions.dart';

class VerifyEmailPage extends StatelessWidget {
  const VerifyEmailPage({super.key, required this.image, required this.title, required this.subTitle, this.onPressed});

  final String image, title, subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginPage()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        //padding
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              //Image
              Image(
                image:
                     AssetImage(image),
                width: CustomHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems),

              //Text and SubTitle
              Text(title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: CustomSizes.spaceBtwItems,
              ),
              Text(subTitle,
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
                      onPressed: () => Get.to(() => const SuceessPage()),
                      child: const Text(CustomTexts.tContinue))),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(CustomTexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}
