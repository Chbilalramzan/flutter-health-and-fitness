import 'package:fit_x/styles/app_colors.dart';
import 'package:flutter/material.dart';

class IconWithCircle extends StatelessWidget {
  const IconWithCircle(
      {Key? key,
      required this.size,
      this.iconSize,
      this.iconColor,
      this.borderColor,
      required this.iconName})
      : super(key: key);
  final double? size, iconSize;
  final Color? iconColor, borderColor;
  final IconData iconName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size!),
        border: Border.all(
          width: 1,
          color: borderColor ?? AppColors.purpleLinearColor,
        ),
      ),
      child: Icon(
        iconName,
        size: iconSize,
        color: iconColor ?? AppColors.purpleLinearColor,
      ),
    );
  }
}
