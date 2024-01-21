import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeSFProDisplay => theme.textTheme.bodyLarge!.sFProDisplay;
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyLargeff101522 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF101522),
      );
  static get bodyLargeffa0a7b0 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFFA0A7B0),
      );
  static get bodyMediumBluegray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 13.fSize,
      );
  static get bodyMediumInterff199a8e =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: Color(0XFF199A8E),
      );
  static get bodyMediumInterff707684 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: Color(0XFF707684),
      );
  static get bodyMediumInterff707684_1 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: Color(0XFF707684),
      );
  static get bodySmallInterGray500 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray500,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallInterPrimary => theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallInterTeal40001 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.teal40001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePlusJakartaSansBluegray400 =>
      theme.textTheme.labelLarge!.plusJakartaSans.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePlusJakartaSansBluegray400_1 =>
      theme.textTheme.labelLarge!.plusJakartaSans.copyWith(
        color: appTheme.blueGray400,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeTeal40001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal40001,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeWhiteA700SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelMedium11 => theme.textTheme.labelMedium!.copyWith(
        fontSize: 11.fSize,
      );
  static get labelMediumInterCyan100 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.cyan100,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumInterGray70001 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.gray70001,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumInterGray900 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.gray900,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumInterRedA200 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.redA200,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallGray500 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 8.fSize,
      );
  static get labelSmallGray500_1 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray500,
      );
  // Plus text style
  static get plusJakartaSansBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w300,
      ).plusJakartaSans;
  // Title text style
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeGray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray900,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePlusJakartaSansWhiteA700 =>
      theme.textTheme.titleLarge!.plusJakartaSans.copyWith(
        color: appTheme.whiteA700,
        fontSize: 23.fSize,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
      );
  static get titleMediumGray90019 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 19.fSize,
      );
  static get titleMediumGray900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get titleMediumLightblueA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightBlueA700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimary18 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 18.fSize,
      );
  static get titleMediumOnPrimaryBold => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimaryMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumPlusJakartaSans =>
      theme.textTheme.titleMedium!.plusJakartaSans.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRedA200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA200,
      );
  static get titleMediumSFProDisplayOnPrimary =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumTeal40001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.teal40001,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallInter => theme.textTheme.titleSmall!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterBluegray300 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterTeal40001 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.teal40001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.53),
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }
}
