import 'package:fit_x/constant/app_constants.dart';
import 'package:fit_x/constant/routes.dart';
import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/app_text_style_regular.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:fit_x/widgets/buttons/gradient_button_blue.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.size30),
        height: Dimensions.screenHeight,
        width: Dimensions.screenWidth,
        child: Stack(
          children: [
            Positioned(
              top: Dimensions.heightHalf,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Fit',
                      style: TextStyle(
                          fontSize: Dimensions.size36,
                          fontFamily: AppConstants.fontBold,
                          color: AppColors.blackColor),
                      children: [
                        TextSpan(
                          text: 'X',
                          style: TextStyle(
                              fontFamily: AppConstants.fontBold,
                              fontSize: Dimensions.size50,
                              color: AppColors.purpleColor),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Everybody Can Train',
                    style: AppTextStyleRegular.textSubtitle
                        .copyWith(color: AppColors.grayColor1),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: Dimensions.size40,
              right: 0,
              left: 0,
              child: GradientButtonBlue(
                text: "Get Started",
                borderRadius: Dimensions.size99,
                height: Dimensions.size60,
                width: Dimensions.buttonSize,
                onPress: () => Routes.to(Routes.onBoardingScreen),
              ),
            )
          ],
        ),
      ),
    );
  }
}
