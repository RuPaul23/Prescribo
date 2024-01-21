import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitleSix extends StatelessWidget {
  AppbarSubtitleSix({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.titleMediumGray900_1.copyWith(
            color: appTheme.gray900,
          ),
        ),
      ),
    );
  }
}
