
import 'package:flutter/material.dart';
import 'package:prescribo/presentation/Widget/Custom_Image_text_widgets/custom_vertical_image_text.dart';
import 'package:prescribo/utils_new/constants/colors.dart';
import 'package:prescribo/utils_new/constants/image_strings.dart';

class FeatureList extends StatelessWidget {
  const FeatureList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return CustomVerticalImage(
              title: 'Prescription',
              image: CustomImages.Prescription,
              textColor: CustomColors.white,
              onTap: () {},
            );
          }),
    );
  }
}

