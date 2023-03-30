import 'package:fit_x/constant/routes.dart';
import 'package:fit_x/controllers/authcontroller/registeration_controller.dart';
import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/app_text_style_bold.dart';
import 'package:fit_x/styles/app_text_style_regular.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:fit_x/utils/spaces.dart';
import 'package:fit_x/widgets/CustomIcons/svg_icon.dart';
import 'package:fit_x/widgets/buttons/gradient_button_blue.dart';
import 'package:fit_x/widgets/containers/custom_container.dart';
import 'package:fit_x/widgets/formFieldBuilders/form_date_time_picker_builder.dart';
import 'package:fit_x/widgets/formFieldBuilders/form_drop_down_builder.dart';
import 'package:fit_x/widgets/formFieldBuilders/form_input_field_builder.dart';
import 'package:fit_x/widgets/texts/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PersonalInfoScreen extends StatelessWidget {
  PersonalInfoScreen({Key? key}) : super(key: key);

  final controller = Get.put(RegisterationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spaces.getDefaultAppBarHeight(),
            SizedBox(
              height: Dimensions.allsetImageHeight,
              width: Dimensions.allsetImageWidth,
              child: SvgPicture.asset(
                'assets/svgs/personalInfoScreen.svg',
                fit: BoxFit.fill,
              ),
            ),
            CustomText(
              text: 'Let’s complete your profile',
              style: AppTextStyleBold.titleH4,
            ),
            CustomText(
              text: 'It will help us to know more about you!',
              style: AppTextStyleRegular.textSmall,
            ),

            Spaces.y30,
            //Text Fields
            Container(
              margin: Spaces.getHorizontalMargin(),
              child: Column(
                children: [
                  FormDropDownBuilder(
                    genderOptions: const ['Male', 'Female', 'Other'],
                    labelText: 'Choose a Gender',
                    attribute: 'gender',
                    initialValue: 'Male',
                    prefixIcon: SvgIcon(
                        size: Dimensions.size18,
                        boxFit: BoxFit.scaleDown,
                        iconPath: 'assets/svgs/icons/user_2.svg',
                        iconColor: AppColors.grayColor1),
                    suffixIcon: SvgIcon(
                        size: Dimensions.size18,
                        boxFit: BoxFit.scaleDown,
                        iconPath: 'assets/svgs/icons/arrow_down_2.svg',
                        iconColor: AppColors.grayColor1),
                  ),
                  Spaces.y15,
                  FormDateTimePickerBuilder(
                    labelText: 'Date of Birth',
                    attribute: 'dateofbirth',
                    prefixIcon: SvgIcon(
                        size: Dimensions.size18,
                        boxFit: BoxFit.scaleDown,
                        iconPath: 'assets/svgs/icons/calendar.svg',
                        iconColor: AppColors.grayColor1),
                  ),
                  Spaces.y15,
                  Row(
                    children: [
                      Expanded(
                        child: FormInputFiledBuilder(
                          labelText: 'Your Weight',
                          attribute: 'your_weight',
                          prefixIcon: SvgIcon(
                              size: Dimensions.size18,
                              boxFit: BoxFit.scaleDown,
                              iconPath: 'assets/svgs/icons/weight_scale.svg',
                              iconColor: AppColors.grayColor1),
                        ),
                      ),
                      Spaces.x15,
                      CustomContainer(
                        text: 'CM',
                        height: Dimensions.size48,
                        width: Dimensions.size48,
                        borderRadius: Dimensions.size14,
                      ),
                    ],
                  ),
                  Spaces.y15,
                  Row(
                    children: [
                      Expanded(
                        child: FormInputFiledBuilder(
                          labelText: 'Your Height',
                          attribute: 'your_height',
                          prefixIcon: SvgIcon(
                              size: Dimensions.size18,
                              boxFit: BoxFit.scaleDown,
                              iconPath: 'assets/svgs/icons/swap.svg',
                              iconColor: AppColors.grayColor1),
                        ),
                      ),
                      Spaces.x15,
                      CustomContainer(
                        text: 'KG',
                        height: Dimensions.size48,
                        width: Dimensions.size48,
                        borderRadius: Dimensions.size14,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Spaces.y10,

            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GradientButtonBlue(
                      height: Dimensions.size60,
                      width: Dimensions.buttonSize,
                      text: 'Next',
                      hasIconRight: true,
                      iconPath: 'assets/svgs/icons/arrow_right_2.svg',
                      iconColor: AppColors.whiteColor,
                      onPress: register,
                    ),
                    Spaces.y30
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void register() {
    Routes.to(Routes.goalsTypeScreen);
  }
}
