import 'package:fit_x/constant/routes.dart';
import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/app_text_style_bold.dart';
import 'package:fit_x/styles/app_text_style_regular.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:fit_x/utils/spaces.dart';
import 'package:fit_x/widgets/buttons/gradient_button_blue.dart';
import 'package:fit_x/widgets/texts/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllSetScreen extends StatelessWidget {
  const AllSetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(top: Dimensions.size80, bottom: Dimensions.size40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Dimensions.allsetImageHeight,
              width: Dimensions.allsetImageWidth,
              child: SvgPicture.asset(
                'assets/svgs/allsetscreen.svg',
                fit: BoxFit.fill,
              ),
            ),
            Spaces.y30,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width80),
              child: Column(
                children: [
                  CustomText(
                      text: 'Welcome, Bilal', style: AppTextStyleBold.titleH4),
                  Spaces.y5,
                  CustomText(
                    text:
                        'You are all set now, let’s reach your goals together with us',
                    style: AppTextStyleRegular.textSmall,
                    color: AppColors.grayColor1,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: GradientButtonBlue(
                height: Dimensions.size60,
                width: Dimensions.buttonSize,
                text: 'Go To Home',
                onPress: () => Routes.offAllTo(Routes.mainNavScreen),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
