import 'package:fit_x/styles/app_text_style_medium.dart';
import 'package:fit_x/styles/app_text_style_regular.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:fit_x/styles/gradients_and_shadows.dart';
import 'package:fit_x/widgets/buttons/gradient_button_blue.dart';
import 'package:fit_x/widgets/texts/custom_text.dart';
import 'package:flutter/material.dart';

class TodayTarget extends StatelessWidget {
  const TodayTarget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.size20),
      height: Dimensions.size58,
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: AppGradients.blueLinearWithOpacity,
        borderRadius: BorderRadius.circular(Dimensions.size16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            text: 'Today\'s Target',
            style: AppTextStyleMedium.textMedium,
          ),
          GradientButtonBlue(
              height: Dimensions.size28,
              width: Dimensions.width68,
              text: 'Check',
              style: AppTextStyleRegular.textSmall,
              onPress: () {})
        ],
      ),
    );
  }
}
