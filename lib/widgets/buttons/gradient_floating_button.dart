import 'package:fit_x/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GradientFloatingButton extends StatelessWidget {
  final double? borderRadius, height, width;
  final double? iconSize;
  final IconData? iconName;
  final Color iconColor;
  final VoidCallback? onPress;
  final bool? hasSvgIcon, hasShadow;
  final String? svgIconPath;

  const GradientFloatingButton(
      {super.key,
      this.borderRadius = 0,
      required this.height,
      required this.width,
      required this.iconSize,
      required this.onPress,
      this.iconName,
      required this.iconColor,
      this.svgIconPath = '',
      this.hasShadow = false,
      this.hasSvgIcon = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      borderRadius: BorderRadius.circular(borderRadius!),
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: AppColors.primaryGradienColor,
            stops: [0.0, 1.2445],
          ),
          boxShadow: [
            BoxShadow(
              color: hasShadow!
                  ? const Color.fromRGBO(149, 173, 254, 0.3)
                  : AppColors.whiteColor,
              offset: Offset(0, hasShadow! ? 10 : 0),
              blurRadius: hasShadow! ? 22 : 0,
            ),
          ],
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        child: hasSvgIcon!
            ? SvgPicture.asset(svgIconPath!,
                fit: BoxFit.scaleDown,
                colorFilter: const ColorFilter.mode(
                    AppColors.whiteColor, BlendMode.srcIn))
            : Icon(
                iconName,
                size: iconSize,
                color: iconColor,
              ),
      ),
    );
  }
}
