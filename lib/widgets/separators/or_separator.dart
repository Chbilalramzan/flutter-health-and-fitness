import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/app_text_style_regular.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:fit_x/utils/spaces.dart';
import 'package:flutter/material.dart';

class OrSeparater extends StatelessWidget {
  const OrSeparater({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spaces.y20,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 1,
              width: Dimensions.width140,
              decoration: BoxDecoration(
                color: AppColors.blackColor,
                border: Border.all(
                  width: 1,
                  color: AppColors.grayColor3,
                ),
              ),
            ),
            Spaces.x10,
            Text(
              'Or',
              style: AppTextStyleRegular.textSmall.copyWith(
                color: AppColors.blackColor,
              ),
            ),
            Spaces.x10,
            Container(
              height: 1,
              width: Dimensions.width140,
              decoration: BoxDecoration(
                color: AppColors.blackColor,
                border: Border.all(
                  width: 1,
                  color: AppColors.grayColor3,
                ),
              ),
            ),
          ],
        ),
        Spaces.y20,
      ],
    );
  }
}
