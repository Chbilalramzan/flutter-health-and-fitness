import 'package:fit_x/controllers/dashboard/home_controller.dart';
import 'package:fit_x/screens/dashboard/home/activity_status.dart';
import 'package:fit_x/screens/dashboard/home/bmi.dart';
import 'package:fit_x/screens/dashboard/home/today_target.dart';
import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/app_text_style_medium.dart';
import 'package:fit_x/styles/app_text_style_regular.dart';
import 'package:fit_x/styles/app_text_style_semibold.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:fit_x/styles/gradients_and_shadows.dart';
import 'package:fit_x/utils/spaces.dart';
import 'package:fit_x/widgets/bars/home_app_bar.dart';
import 'package:fit_x/widgets/listItems/latest_workout_list_item.dart';
import 'package:fit_x/widgets/texts/clickable_text.dart';
import 'package:fit_x/widgets/texts/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              Dimensions.size30, Dimensions.size40, Dimensions.size30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(onTapRightIcon: () {}, controller: homeController),
              Spaces.y30,
              const BMI(),
              Spaces.y30,
              const TodayTarget(),
              Spaces.y30,
              ActivityStatus(homeController: homeController),
              Spaces.y30,
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'Workout Progress',
                        style: AppTextStyleSemiBild.textLarge,
                      ),
                      InkWell(
                        child: Ink(
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimensions.size10),
                          height: Dimensions.size30,
                          width: Dimensions.width72,
                          decoration: BoxDecoration(
                              gradient: AppGradients.blueLinear,
                              borderRadius:
                                  BorderRadius.circular(Dimensions.size30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: 'Weekly',
                                style: AppTextStyleRegular.textCaption,
                                color: AppColors.whiteColor,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                size: Dimensions.size15,
                                color: AppColors.whiteColor,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  // progress graph
                  Container(
                    height: Dimensions.size172,
                  )
                ],
              ),
              Spaces.y30,
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'Latest Workout',
                        style: AppTextStyleSemiBild.textLarge,
                      ),
                      ClickableText(
                        text: 'See more',
                        style: AppTextStyleMedium.textSmall
                            .copyWith(color: AppColors.grayColor2),
                        onTap: () {},
                      )
                    ],
                  ),
                  Spaces.y15,
                  const LatestWorkoutItem(),
                  Spaces.y15,
                  const LatestWorkoutItem(),
                  Spaces.y15,
                ],
              ),
              Spaces.y20
            ],
          ),
        ),
      ),
    );
  }
}
