import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prescribo/Main%20Presentation/StartScreen/LogIn/widget/formdivider.dart';
import 'package:prescribo/Main%20Presentation/StartScreen/LogIn/widget/login_form.dart';
import 'package:prescribo/Main%20Presentation/StartScreen/LogIn/widget/login_header.dart';
import 'package:prescribo/Main%20Presentation/StartScreen/LogIn/widget/social_button.dart';
import 'package:prescribo/core/utils/new_utils/constants/colors.dart';
import 'package:prescribo/core/utils/new_utils/constants/image_strings.dart';
import 'package:prescribo/core/utils/new_utils/constants/sizes.dart';
import 'package:prescribo/core/utils/new_utils/constants/text_strings.dart';
import 'package:prescribo/core/utils/new_utils/helpers/helper_functions.dart';
import 'package:prescribo/core/utils/new_utils/styles/spacing_style.dart';


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
                        FormDivider(dividerText: CustomTexts.orSignInWith.capitalize!,),

                        const SizedBox(height: CustomSizes.spaceBtwItems),
                        /// Footer
                        SocialButton()
                  ],
              )
            )
          ),
        );
      }
}




