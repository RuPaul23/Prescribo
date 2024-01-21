import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';

// ignore: must_be_immutable
class NinetythreeItemWidget extends StatelessWidget {
  const NinetythreeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 118.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 118.h,
          padding: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.fillLightBlueA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Text(
            "Covid-19",
            style: CustomTextStyles.titleSmallInter,
          ),
        ),
      ),
    );
  }
}
