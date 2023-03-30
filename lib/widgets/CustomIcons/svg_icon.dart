import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIcon extends StatelessWidget {
  const SvgIcon(
      {Key? key,
      required this.iconPath,
      this.onTap,
      this.iconColor = const Color(0xFFFFFFFF),
      required this.size,
      this.boxFit})
      : super(key: key);
  final String? iconPath;
  final Color? iconColor;
  final VoidCallback? onTap;
  final double? size;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        iconPath!,
        fit: boxFit!,
        colorFilter: ColorFilter.mode(iconColor!, BlendMode.srcIn),
        height: size,
        width: size,
      ),
    );
  }
}
