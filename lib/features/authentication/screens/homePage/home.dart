import 'package:flutter/material.dart';
import 'package:prescribo/features/authentication/screens/homePage/features/featureList.dart';
import 'package:prescribo/features/authentication/screens/homePage/widgets/customHomeAppBar.dart';
import 'package:prescribo/features/personalization/Section/SectionHeading/CustomSectionHeading.dart';
import 'package:prescribo/presentation/Widget/Custom_SearchBar/Custom_SearchBar.dart';
import 'package:prescribo/presentation/Widget/custom_shapes/containers/primaryHeaderConatiner.dart';
import 'package:prescribo/utils_new/constants/colors.dart';
import 'package:prescribo/utils_new/constants/sizes.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      ///Header
      CustomPrimaryHeaderContainer(
          child: Column(children: [
        //----   App Bar  ----
        const CustomHomeAppBar(),
        const SizedBox(height: CustomSizes.spaceBtwSections),

        //----   Search Bar  ----
        CustomSearchBar(),
        const SizedBox(height: CustomSizes.spaceBtwSections),

        //----  Features Categories  ----
        Padding(
            padding: EdgeInsets.only(left: CustomSizes.defaultSpace),
            child: Column(
              children: [
                const CustomSectionHeading(
                  title: 'Features Category',
                  showActionButton: false,
                  textColor: CustomColors.white,
                ),
                const SizedBox(height: CustomSizes.spaceBtwSections),

                //----  Features Categories List  ----
                const FeatureList()
              ],
            ))
      ]))
    ])));
  }
}
