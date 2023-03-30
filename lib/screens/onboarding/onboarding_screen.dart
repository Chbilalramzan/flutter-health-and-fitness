import 'package:fit_x/constant/app_constants.dart';
import 'package:fit_x/constant/asset_paths.dart';
import 'package:fit_x/constant/routes.dart';
import 'package:fit_x/controllers/onboardingcontroller/onboarding_controller.dart';
import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/app_text_style_bold.dart';
import 'package:fit_x/styles/app_text_style_regular.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:fit_x/widgets/buttons/gradient_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:get/get.dart';

class OnBoardingScreens extends StatefulWidget {
  const OnBoardingScreens({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreens> createState() => _OnBoardingScreensState();
}

class _OnBoardingScreensState extends State<OnBoardingScreens>
    with TickerProviderStateMixin {
  final controller = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Obx(
        () => AnimatedSwitcher(
          duration: const Duration(milliseconds: 600),
          child: onBoard(controller.onBoardingPageNumber.value),
        ),
      ),
      floatingActionButton: Obx(
        () => CircularPercentIndicator(
          animation: true,
          radius: Dimensions.size36,
          backgroundWidth: Dimensions.size0_5,
          lineWidth: Dimensions.size2,
          percent: controller.getBarProgress(),
          animateFromLastPercent: true,
          backgroundColor: AppColors.progressBackgroundColor,
          progressColor: AppColors.brandColor1,
          center: GradientFloatingButton(
            height: Dimensions.size60,
            width: Dimensions.size60,
            iconSize: Dimensions.size24,
            borderRadius: Dimensions.size30,
            iconName: Icons.arrow_forward_ios_rounded,
            iconColor: AppColors.whiteColor,
            onPress: onPress,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget onBoard(int index) {
    return Column(
      key: ValueKey<int>(index),
      children: [
        SizedBox(
          height: Dimensions.onBoardingImageSize,
          width: Dimensions.screenWidth,
          child: SvgPicture.asset(
            AssetPaths.onboarding[index],
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: Dimensions.size64,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.size30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppConstants.onBoardingHeading[index],
                style: AppTextStyleBold.titleH2.copyWith(
                  color: AppColors.blackColor,
                ),
              ),
              Text(
                AppConstants.onBoardingDescription[index],
                style: AppTextStyleRegular.textMedium.copyWith(
                  color: AppColors.grayColor1,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  void onPress() {
    if (controller.onBoardingPageNumber > 2) {
      Routes.to(Routes.loginScreen);
    } else {
      controller.updatePageNumber(1);
    }
  }
}
