import 'package:flutter/material.dart';
import 'package:prescribo/core/utils/new_utils/constants/image_strings.dart';
import 'package:prescribo/core/utils/new_utils/constants/sizes.dart';
import 'package:prescribo/core/utils/new_utils/constants/text_strings.dart';

class CustomLoginHeader extends StatelessWidget {
  const CustomLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image(
        height: 150,
        image: AssetImage(dark? CustomImages.lightAppLogo : CustomImages.darkAppLogo),
      ),
      Text(CustomTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
      const SizedBox(height: CustomSizes.sm,),
      Text(CustomTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
