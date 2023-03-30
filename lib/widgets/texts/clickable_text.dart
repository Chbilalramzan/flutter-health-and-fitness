import 'package:fit_x/styles/app_text_style_medium.dart';
import 'package:flutter/material.dart';

class ClickableText extends StatelessWidget {
  const ClickableText(
      {Key? key,
      required this.text,
      this.onTap,
      this.textDecoration = TextDecoration.none,
      this.color,
      this.style})
      : super(key: key);

  final String? text;
  final TextDecoration? textDecoration;
  final Color? color;
  final TextStyle? style;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text!,
        style: style ??
            AppTextStyleMedium.textSmall
                .copyWith(decoration: textDecoration, color: color),
      ),
    );
  }
}
