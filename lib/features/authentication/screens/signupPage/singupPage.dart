import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prescribo/features/authentication/screens/loginPage/widget/formdivider.dart';
import 'package:prescribo/features/authentication/screens/loginPage/widget/social_button.dart';
import 'package:prescribo/features/authentication/screens/signupPage/widget/signupForm.dart';
import 'package:prescribo/utils_new/constants/sizes.dart';
import 'package:prescribo/utils_new/constants/text_strings.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(CustomSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              /// Titte
              Text(CustomTexts.signupTitle, 
              style: Theme.of(context).textTheme.headlineMedium) ,
              const SizedBox(height: CustomSizes.spaceBtwSections),

              /// Form
              const CustomSignUpForm(),

              const SizedBox(height: CustomSizes.spaceBtwSections),
              ///Divider
              CustomFormDivider(dividerText: CustomTexts.orSignInWith.capitalize!),

              const SizedBox(height: CustomSizes.spaceBtwSections),

              ///Social media buttons
              const CustomSocialButton(), 
              ],  
        ),
        )
      ),
    );
  }
}
