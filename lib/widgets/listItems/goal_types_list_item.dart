import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/app_text_style_regular.dart';
import 'package:fit_x/styles/app_text_style_semibold.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:fit_x/utils/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoalTypesListItem extends StatelessWidget {
  const GoalTypesListItem(
      {Key? key,
      required this.height,
      required this.width,
      required this.borderRadius,
      required this.onTap,
      required this.headingText,
      required this.descriptionText,
      required this.imagePath})
      : super(key: key);

  final String? headingText, descriptionText, imagePath;
  final double? height, width, borderRadius;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.fromLTRB(Dimensions.width30, Dimensions.size35,
                Dimensions.width30, Dimensions.size30),
            height: height,
            width: width,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [AppColors.brandColor1, AppColors.brandColor2],
                stops: [0.0, 1.2445],
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(197, 139, 242, 0.3),
                  offset: Offset(0, 10),
                  blurRadius: 22,
                ),
              ],
              borderRadius:
                  BorderRadius.circular(borderRadius ?? Dimensions.size99),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  imagePath!,
                  width: Dimensions.width205,
                  height: Dimensions.size295,
                ),
                Spaces.y20,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
                  child: Column(
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        headingText!,
                        style: AppTextStyleSemiBild.textMedium,
                      ),
                      Spaces.y20,
                      Text(
                        textAlign: TextAlign.center,
                        descriptionText!,
                        style: AppTextStyleRegular.textSmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
