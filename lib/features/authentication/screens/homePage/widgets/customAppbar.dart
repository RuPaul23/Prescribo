import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:prescribo/utils_new/constants/sizes.dart';
import 'package:prescribo/utils_new/device/device_utility.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
  super.key, 
  this.title, 
  this.actions, 
  this.leadingIcon,
  this.leadingOnPressed,
  this.showBackArrow = false, 
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: CustomSizes.md),
        child: AppBar(
          automaticallyImplyLeading: false,
          leading: showBackArrow ? 
          IconButton(onPressed: ()=> Get.back(), icon: const Icon(Iconsax.arrow_left)):
          leadingIcon != null? IconButton(onPressed: leadingOnPressed, icon: Icon(Iconsax.arrow_left)) : null,
          title: title,
          actions: actions,
          ),
        );
  }

  @override
  Size get preferredSize => Size.fromHeight(CustomDeviceUtils.getAppBarHeight());
}