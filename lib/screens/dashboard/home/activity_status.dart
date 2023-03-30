import 'package:fit_x/controllers/dashboard/home_controller.dart';
import 'package:fit_x/screens/dashboard/home/heart_rate_animation.dart';
import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/app_text_style_medium.dart';
import 'package:fit_x/styles/app_text_style_regular.dart';
import 'package:fit_x/styles/app_text_style_semibold.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:fit_x/styles/gradients_and_shadows.dart';
import 'package:fit_x/utils/spaces.dart';
import 'package:fit_x/widgets/containers/container_with_widget.dart';
import 'package:fit_x/widgets/containers/custom_container.dart';
import 'package:fit_x/widgets/texts/custom_text.dart';
import 'package:fit_x/widgets/texts/gradient_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActivityStatus extends StatelessWidget {
  const ActivityStatus({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Activity Status',
          style: AppTextStyleSemiBild.textLarge,
        ),
        Spaces.y15,
        Container(
          padding: EdgeInsets.all(Dimensions.size20),
          height: Dimensions.size150,
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: AppGradients.blueLinearWithOpacity,
            borderRadius: BorderRadius.circular(Dimensions.size22),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Heart Rate',
                style: AppTextStyleMedium.textMedium,
              ),
              CustomText(
                text: '78 BPM',
                style: AppTextStyleSemiBild.textMedium,
                color: AppColors.brandColor1,
              ),
              Spaces.y10,
              //BPM
              HeartRateChart(
                homeController: homeController,
              ),
            ],
          ),
        ),
        Spaces.y15,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //water intake
            ContainerWithWidget(
              padding: EdgeInsets.only(
                top: Dimensions.size20,
                right: Dimensions.size6,
                bottom: Dimensions.size20,
                left: Dimensions.size20,
              ),
              height: Dimensions.size315,
              width: Dimensions.width150,
              borderRadius: Dimensions.size20,
              boxShadow: true,
              child: Row(
                children: [
                  RotatedBox(
                    quarterTurns: -1,
                    child: LinearPercentIndicator(
                      animation: true,
                      lineHeight: Dimensions.width20,
                      width: Dimensions.size275,
                      percent: homeController.waterIntakeProgressValue.value,
                      backgroundColor: AppColors.progressBackgroundColor,
                      linearGradient: AppGradients.waterIntakeLinear,
                      barRadius: Radius.circular(Dimensions.size30),
                    ),
                  ),
                  Spaces.x10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Water Intake',
                        style: AppTextStyleMedium.textSmall,
                      ),
                      Spaces.y5,
                      GradientText(
                        '${homeController.totalWaterVolumInml / 1000} Liters',
                        style: AppTextStyleSemiBild.textMedium,
                        gradient: AppGradients.blueLinear,
                        isRichText: false,
                      ),
                      Spaces.y5,
                      CustomText(
                        text: 'Real time updates',
                        style: AppTextStyleRegular.textCaption,
                        color: AppColors.grayColor1,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                //sleep
                ContainerWithWidget(
                  padding: EdgeInsets.only(
                    top: Dimensions.size20,
                    right: Dimensions.size20,
                    bottom: Dimensions.size4,
                    left: Dimensions.size20,
                  ),
                  height: Dimensions.size150,
                  width: Dimensions.width150,
                  borderRadius: Dimensions.size20,
                  boxShadow: true,
                  shadowColor: const Color.fromRGBO(29, 22, 23, 0.07),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Sleep',
                        style: AppTextStyleSemiBild.textMedium,
                      ),
                      Spaces.y5,
                      GradientText(
                        '${DateTime.now().hour}',
                        style: AppTextStyleSemiBild.textMedium,
                        gradient: AppGradients.blueLinear,
                        isRichText: true,
                        children: [
                          TextSpan(
                            text: 'h ',
                            style: AppTextStyleSemiBild.textCaption,
                          ),
                          TextSpan(
                            text: '${DateTime.now().minute}',
                            style: AppTextStyleSemiBild.textMedium,
                          ),
                          TextSpan(
                            text: 'm',
                            style: AppTextStyleSemiBild.textCaption,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Spaces.y15,
                //calories
                ContainerWithWidget(
                  padding: EdgeInsets.only(
                    top: Dimensions.size20,
                    right: Dimensions.size20,
                    bottom: Dimensions.size10,
                    left: Dimensions.size20,
                  ),
                  height: Dimensions.size150,
                  width: Dimensions.width150,
                  borderRadius: Dimensions.size20,
                  boxShadow: true,
                  shadowColor: const Color.fromRGBO(29, 22, 23, 0.07),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Calories',
                        style: AppTextStyleSemiBild.textMedium,
                      ),
                      Spaces.y5,
                      GradientText(
                        '${homeController.burntCalories}KCal',
                        style: AppTextStyleSemiBild.textMedium,
                        gradient: AppGradients.blueLinear,
                        isRichText: false,
                      ),
                      Spaces.y5,
                      Align(
                        alignment: Alignment.center,
                        child: Obx(
                          () => CircularPercentIndicator(
                            animation: true,
                            radius: Dimensions.size32,
                            backgroundWidth: Dimensions.size6,
                            lineWidth: Dimensions.size6,
                            percent: homeController.getRemainingCalories(),
                            animateFromLastPercent: true,
                            backgroundColor: AppColors.progressBackgroundColor,
                            linearGradient: AppGradients.caloriesLinear,
                            center: CustomContainer(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.size4),
                              height: Dimensions.size48,
                              width: Dimensions.size48,
                              borderRadius: Dimensions.size48,
                              gradient: AppGradients.blueLinear,
                              text:
                                  '${homeController.totalCalories.value - homeController.burntCalories}KCal left',
                              style: AppTextStyleRegular.textExtraSmall,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
