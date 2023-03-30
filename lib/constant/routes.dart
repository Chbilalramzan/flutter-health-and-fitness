import 'package:fit_x/screens/auth/login/all_set_screen.dart';
import 'package:fit_x/screens/auth/login/login_screen.dart';
import 'package:fit_x/screens/auth/register/goals_type_screen.dart';
import 'package:fit_x/screens/auth/register/personal_info_screen.dart';
import 'package:fit_x/screens/auth/register/signup_screen.dart';
import 'package:fit_x/screens/onboarding/onboarding_screen.dart';
import 'package:fit_x/screens/onboarding/splash_screen.dart';
import 'package:fit_x/screens/mainNav/tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Routes {
  //Outside Routes
  static const String initialScreen = '/initialScreen';
  static const String onBoardingScreen = '/onBoardingScreen';
  static const String loginScreen = '/loginScreen';
  static const String allSetScreen = '/allSetScreen';
  static const String signupScreen = '/signupScreen';
  static const String personalInfoScreen = '/personalInfoScreen';
  static const String goalsTypeScreen = '/goalsTypeScreen';
  static const String mainNavScreen = '/mainNavScreen';

  static getInitialRoute() => initialScreen;

  static getPages() {
    return [
      GetPage(
        name: initialScreen,
        page: () => const SplashScreen(),
      ),
      GetPage(
        name: onBoardingScreen,
        page: () => const OnBoardingScreens(),
      ),
      GetPage(
        name: loginScreen,
        page: () => LoginScreen(),
      ),
      GetPage(
        name: allSetScreen,
        page: () => const AllSetScreen(),
      ),
      GetPage(
        name: signupScreen,
        page: () => SignUpScreen(),
      ),
      GetPage(
        name: personalInfoScreen,
        page: () => PersonalInfoScreen(),
      ),
      GetPage(
        name: goalsTypeScreen,
        page: () => const GoalsTypeScreen(),
      ),
      GetPage(
        name: mainNavScreen,
        page: () => TabsScreen(),
      ),
    ];
  }

  static to(String route, {Map<String, dynamic>? arguments}) =>
      Get.toNamed(route, arguments: arguments);

  static offAllTo(String route, {Map<String, dynamic>? arguments}) =>
      Get.offAllNamed(route, arguments: arguments);

  static replaceScr(String route, {Map<String, dynamic>? arguments}) =>
      Get.offAndToNamed(route, arguments: arguments);

  static back() => Get.back();

  static moveToScr(BuildContext context, Widget screen) {
    // pushNewScreen(
    //   context,
    //   screen: screen,
    //   withNavBar: true,
    //   // pageTransitionAnimation: PageTransitionAnimation.cupertino,
    // );
  }
}
