import 'package:fit_x/styles/app_text_style_medium.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:fit_x/styles/gradients_and_shadows.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {Key? key,
      required this.height,
      required this.width,
      required this.borderRadius,
      this.onTap,
      required this.text,
      this.style,
      this.gradient,
      this.boxShadow = false,
      this.padding})
      : super(key: key);

  final String? text;
  final double? height, width, borderRadius;
  final TextStyle? style;
  final VoidCallback? onTap;
  final LinearGradient? gradient;
  final bool? boxShadow;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding ?? const EdgeInsets.all(0),
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: gradient ?? AppGradients.purpleLinear,
          boxShadow: boxShadow!
              ? const [
                  BoxShadow(
                    color: Color.fromRGBO(149, 173, 254, 0.3),
                    offset: Offset(0, 10),
                    blurRadius: 22,
                  ),
                ]
              : [],
          borderRadius:
              BorderRadius.circular(borderRadius ?? Dimensions.size99),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            textAlign: TextAlign.center,
            text!,
            style: style ?? AppTextStyleMedium.textSmall,
          ),
        ),
      ),
    );
  }
}
