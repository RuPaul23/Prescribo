import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prescribo/features/authentication/screens/loginPage/widget/formdivider.dart';
import 'package:prescribo/features/authentication/screens/loginPage/widget/login_form.dart';
import 'package:prescribo/features/authentication/screens/loginPage/widget/login_header.dart';
import 'package:prescribo/features/authentication/screens/loginPage/widget/social_button.dart';
import 'package:prescribo/utils_new/constants/sizes.dart';
import 'package:prescribo/utils_new/constants/text_strings.dart';
import 'package:prescribo/utils_new/helpers/helper_functions.dart';
import 'package:prescribo/utils_new/styles/spacing_style.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
              padding: CustomSpacingStyle.paddingWithAppBarHeight,
              child: Column(
                  children: [
                      // Logo, Title & Sub-Title
                      CustomLoginHeader(dark: dark),

                      //Form
                      LoginForm(),

                        /// Divider
                        CustomFormDivider(dividerText: CustomTexts.orSignInWith.capitalize!),

                        const SizedBox(height: CustomSizes.spaceBtwItems),
                        /// Footer
                        CustomSocialButton(),
                  ],
              )
            )
          ),
        );
      }
}




