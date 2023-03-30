import 'package:fit_x/styles/app_colors.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.text,
      required this.style,
      this.color,
      this.textAlign = TextAlign.center})
      : super(key: key);

  final String? text;
  final TextStyle? style;
  final Color? color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text!,
      style: style!.copyWith(color: color ?? AppColors.blackColor),
    );
  }
}
