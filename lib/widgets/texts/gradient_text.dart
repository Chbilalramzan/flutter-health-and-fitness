import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    super.key,
    required this.gradient,
    this.style,
    this.textAlign,
    this.isRichText = false,
    this.children = const [],
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;
  final TextAlign? textAlign;
  final bool? isRichText;
  final List<InlineSpan>? children;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: isRichText!
          ? RichText(
              text: TextSpan(
                text: text,
                style: style,
                children: children,
              ),
            )
          : Text(textAlign: textAlign, text, style: style),
    );
  }
}
