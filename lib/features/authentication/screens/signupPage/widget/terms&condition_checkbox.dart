import 'package:flutter/material.dart';
import 'package:prescribo/utils_new/constants/colors.dart';
import 'package:prescribo/utils_new/constants/sizes.dart';
import 'package:prescribo/utils_new/constants/text_strings.dart';
import 'package:prescribo/utils_new/helpers/helper_functions.dart';

class CustomTermsandCondition extends StatelessWidget {
  const CustomTermsandCondition({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(width:24, height:24, child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: CustomSizes.spaceBtwItems),
        
        Text.rich(
          TextSpan(children: [
            TextSpan(text: '${CustomTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: '${CustomTexts.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark ? CustomColors.white : CustomColors.primary, 
              decoration: TextDecoration.underline,
              decorationColor: dark ? CustomColors.white : CustomColors.primary)
              ),
            TextSpan(text: '${CustomTexts.and} ', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: '${CustomTexts.termsOfUse} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark ? CustomColors.white : CustomColors.primary, 
              decoration: TextDecoration.underline,
              decorationColor: dark ? CustomColors.white : CustomColors.primary)
              ),
        
        ]
        ),
        ),
      ],
    );
  }
}