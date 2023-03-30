import 'package:fit_x/controllers/dashboard/home_controller.dart';
import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/app_text_style_bold.dart';
import 'package:fit_x/styles/app_text_style_regular.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:fit_x/utils/spaces.dart';
import 'package:fit_x/widgets/CustomIcons/app_bar_icon.dart';
import 'package:fit_x/widgets/texts/custom_text.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
    this.onTapRightIcon,
    this.controller,
  });

  final HomeController? controller;
  final VoidCallback? onTapRightIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Welcome Back,',
              style: AppTextStyleRegular.textSmall,
              color: AppColors.grayColor2,
            ),
            Spaces.y5,
            CustomText(
                text: 'Stefani Wong',
                style: AppTextStyleBold.titleH4,
                color: AppColors.blackColor),
          ],
        ),
        AppBarIcon(
          onTap: onTapRightIcon,
          iconPath: controller!.notificationCount.value > 0
              ? 'assets/svgs/icons/notification_active.svg'
              : 'assets/svgs/icons/notification_inactive.svg',
          iconSize: Dimensions.size18,
        )
      ],
    );
  }
}
