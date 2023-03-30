import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:flutter/material.dart';

class ContainerWithWidget extends StatelessWidget {
  const ContainerWithWidget(
      {Key? key,
      required this.height,
      required this.width,
      required this.borderRadius,
      required this.child,
      this.boxShadow = false,
      this.padding,
      this.shadowColor,
      this.backgroundColor})
      : super(key: key);

  final Widget child;
  final double? height, width, borderRadius;
  final bool? boxShadow;
  final Color? shadowColor, backgroundColor;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.all(Dimensions.size20),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.whiteColor,
        boxShadow: boxShadow!
            ? [
                BoxShadow(
                  color: shadowColor ?? const Color.fromRGBO(29, 36, 42, 0.05),
                  offset: const Offset(0, 10),
                  blurRadius: 40,
                ),
              ]
            : [],
        borderRadius: BorderRadius.circular(borderRadius ?? Dimensions.size99),
      ),
      child: child,
    );
  }
}
