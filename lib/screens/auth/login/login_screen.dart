import 'package:fit_x/constant/routes.dart';
import 'package:fit_x/controllers/authcontroller/login_controller.dart';
import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/app_text_style_bold.dart';
import 'package:fit_x/styles/app_text_style_regular.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:fit_x/utils/spaces.dart';
import 'package:fit_x/widgets/CustomIcons/svg_icon.dart';
import 'package:fit_x/widgets/buttons/gradient_button_blue.dart';
import 'package:fit_x/widgets/formFieldBuilders/form_input_field_builder.dart';
import 'package:fit_x/widgets/separators/or_separator.dart';
import 'package:fit_x/widgets/texts/clickable_text.dart';
import 'package:fit_x/widgets/texts/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spaces.getDefaultAppBarHeight(),
            CustomText(
              text: 'Hey there,',
              style: AppTextStyleRegular.textLarge,
            ),
            CustomText(
              text: 'Welcome Back,',
              style: AppTextStyleBold.titleH4,
            ),
            Spaces.y30,
            //Text Fields
            Container(
              margin: Spaces.getHorizontalMargin(),
              child: Column(
                children: [
                  FormInputFiledBuilder(
                    labelText: 'Email',
                    attribute: 'email',
                    prefixIcon: SvgIcon(
                        size: Dimensions.size18,
                        boxFit: BoxFit.scaleDown,
                        iconPath: 'assets/svgs/icons/message.svg',
                        iconColor: AppColors.grayColor1),
                  ),
                  Spaces.y15,
                  Obx(
                    () => FormInputFiledBuilder(
                        obscureText: controller.hidePassword.value,
                        labelText: 'Password',
                        attribute: 'password',
                        prefixIcon: SvgIcon(
                            size: Dimensions.size18,
                            boxFit: BoxFit.scaleDown,
                            iconPath: 'assets/svgs/icons/lock.svg',
                            iconColor: AppColors.grayColor1),
                        suffixIcon: SvgIcon(
                          size: Dimensions.size18,
                          boxFit: BoxFit.scaleDown,
                          iconColor: AppColors.grayColor1,
                          iconPath: controller.hidePassword.value
                              ? 'assets/svgs/icons/hide.svg'
                              : 'assets/svgs/icons/show.svg',
                          onTap: () => controller.showPassword(),
                        )),
                  ),
                ],
              ),
            ),

            Spaces.y10,

            ClickableText(
              text: 'Forgot your password?',
              color: AppColors.grayColor2,
              textDecoration: TextDecoration.underline,
              onTap: () {},
            ),

            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GradientButtonBlue(
                      height: Dimensions.size60,
                      width: Dimensions.buttonSize,
                      hasIcon: true,
                      iconPath: 'assets/svgs/icons/login.svg',
                      iconColor: AppColors.whiteColor,
                      text: 'Login',
                      onPress: login,
                    ),
                    const OrSeparater(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            'assets/svgs/google.svg',
                            width: Dimensions.size50,
                            height: Dimensions.size50,
                          ),
                        ),
                        Spaces.x30,
                        GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            'assets/svgs/facebook.svg',
                            width: Dimensions.size50,
                            height: Dimensions.size50,
                          ),
                        ),
                      ],
                    ),
                    Spaces.y30,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: 'Don\'t have an account yet?',
                          style: AppTextStyleRegular.textMedium.copyWith(
                            color: AppColors.blackColor,
                          ),
                        ),
                        ClickableText(
                          text: ' Register',
                          style: AppTextStyleRegular.textMedium
                              .copyWith(color: AppColors.secondaryColor3),
                          onTap: () {
                            Routes.replaceScr(Routes.signupScreen);
                          },
                        ),
                      ],
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

  void login() {
    Routes.to(Routes.allSetScreen);
  }
}
