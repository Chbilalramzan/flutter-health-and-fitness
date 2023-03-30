import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot(
      {Key? key,
      required this.size,
      required this.dotRadius,
      required this.dotColor})
      : super(key: key);

  final double size, dotRadius;
  final Color dotColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: dotColor,
        borderRadius: BorderRadius.all(
          Radius.circular(dotRadius),
        ),
      ),
    );
  }
}
