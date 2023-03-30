import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/app_text_style_regular.dart';
import 'package:fit_x/styles/app_text_style_semibold.dart';
import 'package:fit_x/styles/decorations.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:fit_x/utils/spaces.dart';
import 'package:fit_x/widgets/containers/custom_container.dart';
import 'package:fit_x/widgets/containers/dots.dart';
import 'package:fit_x/widgets/texts/custom_text.dart';
import 'package:flutter/material.dart';

class BMI extends StatelessWidget {
  const BMI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: Dimensions.size146,
      decoration: AppBoxDecorations.bmiBoxDecoration,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Dimensions.size22),
        child: Stack(
          children: [
            Positioned(
              top: Dimensions.size12,
              left: 109,
              child: Dot(
                dotColor: AppColors.whiteColor.withOpacity(0.2),
                size: Dimensions.size8,
                dotRadius: Dimensions.size8,
              ),
            ),
            Positioned(
              top: Dimensions.size22,
              left: 167,
              child: Dot(
                dotColor: AppColors.whiteColor.withOpacity(0.2),
                size: Dimensions.size8,
                dotRadius: Dimensions.size8,
              ),
            ),
            Positioned(
              bottom: Dimensions.size32,
              left: 132,
              child: Dot(
                dotColor: AppColors.whiteColor.withOpacity(0.2),
                size: Dimensions.size8,
                dotRadius: Dimensions.size8,
              ),
            ),
            Positioned(
              bottom: Dimensions.size12,
              left: 175,
              child: Dot(
                dotColor: AppColors.whiteColor.withOpacity(0.2),
                size: Dimensions.size8,
                dotRadius: Dimensions.size8,
              ),
            ),
            Positioned(
              top: Dimensions.size114,
              left: -Dimensions.size18,
              child: Dot(
                dotColor: AppColors.whiteColor.withOpacity(0.2),
                size: Dimensions.size50,
                dotRadius: Dimensions.size50,
              ),
            ),
            Positioned(
              top: Dimensions.size99,
              right: -Dimensions.size10,
              child: Dot(
                dotColor: AppColors.whiteColor.withOpacity(0.2),
                size: Dimensions.size50,
                dotRadius: Dimensions.size50,
              ),
            ),
            Positioned(
              top: Dimensions.size26,
              left: Dimensions.size20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'BMI(Body Mass Index)',
                    style: AppTextStyleSemiBild.textMedium,
                    color: AppColors.whiteColor,
                  ),
                  Spaces.y5,
                  CustomText(
                    text: 'You have a normal weight',
                    style: AppTextStyleRegular.textSmall,
                    color: AppColors.whiteColor,
                  ),
                  Spaces.y15,
                  CustomContainer(
                    height: Dimensions.size35,
                    width: Dimensions.width95,
                    borderRadius: Dimensions.size50,
                    text: 'View More',
                    style: AppTextStyleSemiBild.textCaption,
                    onTap: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
