import 'package:flutter/material.dart';
import 'package:prescribo/utils_new/constants/colors.dart';
import 'package:prescribo/utils_new/constants/image_strings.dart';
import 'package:prescribo/utils_new/constants/sizes.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //twitter logo signin
        Container(
        decoration: BoxDecoration(border: Border.all(color: CustomColors.grey), borderRadius: BorderRadius.circular(100)),
        child: IconButton(onPressed: (){}, icon: const Image(image: AssetImage(CustomImages.twitter), height: CustomSizes.iconMd, width: CustomSizes.iconMd,)),
        ),
        
        //google logo signin
        const SizedBox(width: CustomSizes.spaceBtwItems),
        Container(
        decoration: BoxDecoration(border: Border.all(color: CustomColors.grey), borderRadius: BorderRadius.circular(100)),
        child: IconButton(onPressed: (){}, icon: const Image(image: AssetImage(CustomImages.google), height: CustomSizes.iconMd, width: CustomSizes.iconMd,)),
        ),
    
        //facebook logo signin
        const SizedBox(width: CustomSizes.spaceBtwItems),
        Container(
        decoration: BoxDecoration(border: Border.all(color: CustomColors.grey), borderRadius: BorderRadius.circular(100)),
        child: IconButton(onPressed: (){}, icon: const Image(image: AssetImage(CustomImages.facebook), height: CustomSizes.iconMd, width: CustomSizes.iconMd,)),
        ),
      ],
    );
  }
}
