import 'package:fit_x/styles/dimensions.dart';
import 'package:flutter/material.dart';

class Spaces {
  /// Use these widgets for space along X-Axis (for width)
  static Widget x0 = const SizedBox(width: 0);
  static Widget x0_5 = SizedBox(width: Dimensions.size0_5);
  static Widget x5 = SizedBox(width: Dimensions.size5);
  static Widget x10 = SizedBox(width: Dimensions.size10);
  static Widget x15 = SizedBox(width: Dimensions.size15);
  static Widget x20 = SizedBox(width: Dimensions.size20);
  static Widget x30 = SizedBox(width: Dimensions.size30);

  /// User these widgets for space along Y-Axis (for height)
  ///  static Widget y72 = SizedBox(height: Dimensions.size72);
  ///
  static Widget y4 = SizedBox(height: Dimensions.size4);
  static Widget y5 = SizedBox(height: Dimensions.size5);
  static Widget y10 = SizedBox(height: Dimensions.size10);
  static Widget y15 = SizedBox(height: Dimensions.size15);
  static Widget y20 = SizedBox(height: Dimensions.size20);
  static Widget y24 = SizedBox(height: Dimensions.size24);
  static Widget y30 = SizedBox(height: Dimensions.size30);
  static Widget y40 = SizedBox(height: Dimensions.size40);
  static Widget y72 = SizedBox(height: Dimensions.size72);

  /// [y10] Margin values from top of the status bar to the first element
  /// Use this value when there is no action bar like in Language selection screen

  /// Use this when there is action bar like home screens
  // static final topMarginWithActionBar = 4.0.h;
  static final defaultHorizontalPadding = Dimensions.size30;
  static final defaultHorizontalMargin = Dimensions.size30;

  static Widget getDefaultAppBarHeight() {
    return SizedBox(height: AppBar().preferredSize.height);
  }

  static EdgeInsets getHorizontalPadding() {
    return EdgeInsets.symmetric(horizontal: defaultHorizontalPadding);
  }

  static EdgeInsets getHorizontalMargin() {
    return EdgeInsets.symmetric(horizontal: defaultHorizontalMargin);
  }

  // static double normX(double x) => x.w;

  // static double normY(double y) => y.h;

  // static double normSP(double unit) => unit.sp;
}
