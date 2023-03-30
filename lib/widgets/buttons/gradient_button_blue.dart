import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/app_text_style_bold.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:fit_x/utils/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GradientButtonBlue extends StatelessWidget {
  final double? borderRadius, height, width;
  final String? text, iconPath;
  final bool? hasIcon, hasIconRight;
  final Color? iconColor;
  final VoidCallback? onPress;
  final TextStyle? style;

  const GradientButtonBlue({
    super.key,
    this.borderRadius,
    required this.height,
    required this.width,
    required this.text,
    required this.onPress,
    this.iconPath,
    this.hasIcon = false,
    this.hasIconRight = false,
    this.iconColor,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      borderRadius: BorderRadius.circular(borderRadius ?? Dimensions.size99),
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
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(149, 173, 254, 0.3),
              offset: Offset(0, 10),
              blurRadius: 22,
            ),
          ],
          borderRadius:
              BorderRadius.circular(borderRadius ?? Dimensions.size99),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            hasIcon!
                ? SvgPicture.asset(
                    iconPath!,
                    width: Dimensions.size24,
                    height: Dimensions.size24,
                    colorFilter: ColorFilter.mode(iconColor!, BlendMode.srcIn),
                  )
                : const SizedBox(),
            hasIcon! ? Spaces.x10 : Spaces.x0,
            Text(
              textAlign: TextAlign.center,
              text!,
              style: style ?? AppTextStyleBold.textLarge,
            ),
            hasIconRight! ? Spaces.x5 : Spaces.x0,
            hasIconRight!
                ? SvgPicture.asset(
                    iconPath!,
                    width: Dimensions.size24,
                    height: Dimensions.size24,
                    colorFilter: ColorFilter.mode(iconColor!, BlendMode.srcIn),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
