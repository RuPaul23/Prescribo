
import 'package:flutter/material.dart';
import 'package:prescribo/features/authentication/screens/homePage/widgets/customAppbar.dart';
import 'package:prescribo/features/authentication/screens/homePage/widgets/customCartCounterIcon.dart';
import 'package:prescribo/utils_new/constants/colors.dart';
import 'package:prescribo/utils_new/constants/text_strings.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(CustomTexts.homeAppbarTitle, style: Theme.of(context).textTheme.headlineMedium!.apply(color: CustomColors.grey))        ],
      ),
      actions: [CustomCartCounterIcon(onPressed: () {  }, iconColor: CustomColors.white,)],
    );
  }
}
