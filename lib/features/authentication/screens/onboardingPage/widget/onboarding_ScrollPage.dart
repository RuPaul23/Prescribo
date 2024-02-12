
import 'package:flutter/material.dart';
import 'package:prescribo/utils_new/constants/sizes.dart';
import 'package:prescribo/utils_new/helpers/helper_functions.dart';

class OnBoardingScrollPage extends StatelessWidget {
  const OnBoardingScrollPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });
  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CustomSizes.defaultSpace),
      child: Column(
        children: [
          Image(
          width: CustomHelperFunctions.screenWidth()*0.8,
          height: CustomHelperFunctions.screenHeight()*0.6,
          image: AssetImage(image),
            ),
          Text(title, style: Theme.of(context).textTheme.headlineMedium),
      
          const SizedBox(height: CustomSizes.spaceBtwItems),
      
          Text(subTitle, style: Theme.of(context).textTheme.bodyMedium),
          ],
      ),
    );
  }
}
