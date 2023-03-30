import 'package:fit_x/styles/dimensions.dart';
import 'package:fit_x/styles/gradients_and_shadows.dart';
import 'package:flutter/material.dart';

class AppBoxDecorations {
  static BoxDecoration bmiBoxDecoration = BoxDecoration(
    gradient: AppGradients.blueLinear,
    boxShadow: AppShadows.blueShadow,
    borderRadius: BorderRadius.circular(Dimensions.size22),
  );
}
