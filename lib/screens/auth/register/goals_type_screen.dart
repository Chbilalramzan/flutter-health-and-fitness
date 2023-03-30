import 'package:fit_x/constant/app_constants.dart';
import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/app_text_style_bold.dart';
import 'package:fit_x/styles/app_text_style_regular.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:fit_x/utils/spaces.dart';
import 'package:fit_x/widgets/buttons/gradient_button_blue.dart';
import 'package:fit_x/widgets/listItems/goal_types_list_item.dart';
import 'package:fit_x/widgets/texts/custom_text.dart';
import 'package:flutter/material.dart';

class GoalsTypeScreen extends StatefulWidget {
  const GoalsTypeScreen({Key? key}) : super(key: key);

  @override
  State<GoalsTypeScreen> createState() => _GoalsTypeScreenState();
}

class _GoalsTypeScreenState extends State<GoalsTypeScreen> {
  PageController pageController = PageController(viewportFraction: 0.80);

  var _currentPageValue = 0.0;

  double _scaleFactor = 0.8, _height = Dimensions.size478;

  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
    super.initState();
  }

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
              text: 'What is your goal ?',
              style: AppTextStyleBold.titleH4,
            ),
            SizedBox(
              width: Dimensions.width180,
              child: CustomText(
                textAlign: TextAlign.center,
                text: 'It will help us to choose a best program for you',
                color: AppColors.grayColor1,
                style: AppTextStyleRegular.textSmall,
              ),
            ),
            SizedBox(
              height: Dimensions.size550,
              child: PageView.builder(
                controller: pageController,
                scrollDirection: Axis.horizontal,
                itemCount: AppConstants.goalTypes.length,
                itemBuilder: (context, index) => _buildPageItem(index),
              ),
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
                      text: 'Confirm',
                      onPress: onConfirm,
                    ),
                    Spaces.y40
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currentTransform = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransform, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currentScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currentTransform = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransform, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currentTransform = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransform, 0);
    } else {
      var currentScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }

    return Transform(
      transform: matrix,
      child: GoalTypesListItem(
        height: Dimensions.size478,
        width: Dimensions.width275,
        borderRadius: Dimensions.size22,
        onTap: () {},
        headingText: AppConstants.goalTypes[index]['title'],
        descriptionText: AppConstants.goalTypes[index]['description'],
        imagePath: AppConstants.goalTypes[index]['image'],
      ),
    );
  }

  void onConfirm() {}
}
