
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:prescribo/utils_new/constants/colors.dart';

class CustomCartCounterIcon extends StatelessWidget {
  const CustomCartCounterIcon({
    super.key, required this.iconColor, required this.onPressed,
  });
  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      IconButton(
          onPressed: () => {},
          icon: Icon(Iconsax.notification, color: iconColor)),
      Positioned(
        right: 0,
        child: Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: CustomColors.black.withOpacity(0.5),
          ),
          child: Center(
            child: Text('2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: CustomColors.white, fontSizeFactor: 0.8)),
          ),
        ),
      ),
    ]);
  }
}
