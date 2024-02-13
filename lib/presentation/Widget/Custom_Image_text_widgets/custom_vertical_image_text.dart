import 'package:flutter/material.dart';
import 'package:prescribo/utils_new/constants/colors.dart';
import 'package:prescribo/utils_new/constants/sizes.dart';
import 'package:prescribo/utils_new/helpers/helper_functions.dart';

class CustomVerticalImage extends StatelessWidget {
  const CustomVerticalImage({
    super.key,
    required this.image,
    required this.title,
    this.textColor = CustomColors.white,
    this.backgroundColor = CustomColors.white,
    this.onTap,
  });
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark= CustomHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: CustomSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(CustomSizes.md14),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark? CustomColors.black : CustomColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: CustomSizes.spaceBtwItems / 2),

            ///Features Name
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: CustomColors.white),
            )
          ],
        ),
      ),
    );
  }
}
