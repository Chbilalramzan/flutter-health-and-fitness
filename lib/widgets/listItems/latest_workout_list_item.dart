import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/app_text_style_medium.dart';
import 'package:fit_x/styles/app_text_style_regular.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:fit_x/styles/gradients_and_shadows.dart';
import 'package:fit_x/utils/spaces.dart';
import 'package:fit_x/widgets/CustomIcons/icon_with_circle.dart';
import 'package:fit_x/widgets/containers/container_with_widget.dart';
import 'package:fit_x/widgets/texts/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LatestWorkoutItem extends StatelessWidget {
  const LatestWorkoutItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ContainerWithWidget(
          padding: EdgeInsets.only(
            top: Dimensions.size15,
            right: Dimensions.size15,
            bottom: Dimensions.size10,
            left: Dimensions.size15,
          ),
          boxShadow: true,
          shadowColor: const Color.fromRGBO(29, 36, 42, 0.05),
          height: Dimensions.size80,
          width: Dimensions.size315,
          borderRadius: Dimensions.size16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.camera,
                    size: 50,
                  ),
                  Spaces.x10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Lowerbody Workout',
                        style: AppTextStyleMedium.textSmall,
                      ),
                      CustomText(
                        text: '200 Calories Burn | 30minutes',
                        style: AppTextStyleRegular.textCaption,
                        color: AppColors.grayColor4,
                      ),
                      Spaces.y10,
                      LinearPercentIndicator(
                        padding: const EdgeInsets.all(0),
                        animation: true,
                        lineHeight: Dimensions.size10,
                        width: Dimensions.width190,
                        percent: 0.4,
                        backgroundColor: AppColors.progressBackgroundColor,
                        linearGradient: AppGradients.waterIntakeLinear,
                        barRadius: Radius.circular(Dimensions.size50),
                      )
                    ],
                  ),
                ],
              ),
              IconWithCircle(
                size: Dimensions.size24,
                iconSize: Dimensions.size14,
                iconName: Icons.keyboard_arrow_right,
              )
            ],
          )),
    );
  }
}
