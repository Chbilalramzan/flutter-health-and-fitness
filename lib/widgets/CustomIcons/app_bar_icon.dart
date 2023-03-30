import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarIcon extends StatelessWidget {
  final String iconPath;
  final Color? iconColor;
  final double iconSize;
  final VoidCallback? onTap;

  const AppBarIcon(
      {Key? key,
      required this.iconPath,
      this.iconColor,
      this.iconSize = 18,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: Dimensions.size40,
        height: Dimensions.size40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.size8),
          color: AppColors.inputFieldBackgroundColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(Dimensions.size10),
          child: SvgPicture.asset(
            iconPath,
            fit: BoxFit.contain,
            height: iconSize,
            width: iconSize,
          ),
        ),
      ),
    );
  }
}
