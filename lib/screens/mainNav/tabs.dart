import 'package:fit_x/screens/dashboard/home/home_screen.dart';
import 'package:fit_x/styles/app_colors.dart';
import 'package:fit_x/styles/dimensions.dart';
import 'package:fit_x/utils/spaces.dart';
import 'package:fit_x/widgets/CustomIcons/svg_icon.dart';
import 'package:fit_x/widgets/buttons/gradient_floating_button.dart';
import 'package:fit_x/widgets/containers/dots.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabsScreen extends StatelessWidget {
  TabsScreen({Key? key}) : super(key: key);

  var currentTab = 0.obs;

  final List<Widget> screens = [
    HomeScreen(),
    const Center(child: Text('Next Page 1')),
    const Center(child: Text('Next Page 2')),
    const Center(child: Text('Next Page 3')),
  ];

  void onTapButton(int index) {
    currentTab.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: screens[currentTab.value],
        floatingActionButton: Padding(
          padding: EdgeInsets.only(top: Dimensions.size30),
          child: GradientFloatingButton(
            height: Dimensions.size60,
            width: Dimensions.size60,
            iconSize: Dimensions.size20,
            borderRadius: Dimensions.size30,
            onPress: () {},
            hasSvgIcon: true,
            hasShadow: true,
            svgIconPath: 'assets/svgs/icons/search.svg',
            iconColor: AppColors.whiteColor,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: Dimensions.size60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      onPressed: () => onTapButton(0),
                      minWidth: Dimensions.width72,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgIcon(
                            size: Dimensions.size24,
                            boxFit: BoxFit.contain,
                            iconPath: currentTab.value == 0
                                ? 'assets/svgs/icons/tabs/home_fill.svg'
                                : 'assets/svgs/icons/tabs/home.svg',
                            iconColor: currentTab.value == 0
                                ? AppColors.purpleLinearColor
                                : AppColors.grayColor2,
                          ),
                          Spaces.y4,
                          currentTab.value == 0
                              ? Dot(
                                  size: Dimensions.size4,
                                  dotRadius: Dimensions.size4,
                                  dotColor: AppColors.purpleLinearColor)
                              : const SizedBox()
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () => onTapButton(1),
                      minWidth: Dimensions.width72,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgIcon(
                            size: Dimensions.size24,
                            boxFit: BoxFit.contain,
                            iconPath: currentTab.value == 1
                                ? 'assets/svgs/icons/tabs/activity_fill.svg'
                                : 'assets/svgs/icons/tabs/activity.svg',
                            iconColor: currentTab.value == 1
                                ? AppColors.purpleLinearColor
                                : AppColors.grayColor2,
                          ),
                          Spaces.y4,
                          currentTab.value == 1
                              ? Dot(
                                  size: Dimensions.size4,
                                  dotRadius: Dimensions.size4,
                                  dotColor: AppColors.purpleLinearColor)
                              : const SizedBox()
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    MaterialButton(
                      onPressed: () => onTapButton(2),
                      minWidth: Dimensions.width72,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgIcon(
                            size: Dimensions.size24,
                            boxFit: BoxFit.contain,
                            iconPath: currentTab.value == 2
                                ? 'assets/svgs/icons/tabs/camera_fill.svg'
                                : 'assets/svgs/icons/tabs/camera.svg',
                            iconColor: currentTab.value == 2
                                ? AppColors.purpleLinearColor
                                : AppColors.grayColor2,
                          ),
                          Spaces.y4,
                          currentTab.value == 2
                              ? Dot(
                                  size: Dimensions.size4,
                                  dotRadius: Dimensions.size4,
                                  dotColor: AppColors.purpleLinearColor)
                              : const SizedBox()
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () => onTapButton(3),
                      minWidth: Dimensions.width72,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgIcon(
                            size: Dimensions.size24,
                            boxFit: BoxFit.contain,
                            iconPath: currentTab.value == 3
                                ? 'assets/svgs/icons/tabs/profile_fill.svg'
                                : 'assets/svgs/icons/tabs/profile.svg',
                            iconColor: currentTab.value == 3
                                ? AppColors.purpleLinearColor
                                : AppColors.grayColor2,
                          ),
                          Spaces.y4,
                          currentTab.value == 3
                              ? Dot(
                                  size: Dimensions.size4,
                                  dotRadius: Dimensions.size4,
                                  dotColor: AppColors.purpleLinearColor)
                              : const SizedBox()
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
