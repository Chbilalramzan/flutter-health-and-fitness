import 'package:get/get.dart';

class Dimensions {
  // height and width you will get from your phisical device.
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // height and width of the sample UI screen you are making from figma, xd, sketch or any other tool.
  static double heightOfTheUIScreenInPix = 812;
  static double widthOfTheUIScreenInPix = 375;

  static double pi = 3.141;

  static double heightHalf = screenHeight / 2.1;
  static double pageViewHeight = screenHeight / 2;

  // dynamic sizes
  static double size0_5 = screenHeight / getSize(0.5);
  static double size2 = screenHeight / getSize(2);
  static double size4 = screenHeight / getSize(4);
  static double size5 = screenHeight / getSize(5);
  static double size6 = screenHeight / getSize(6);
  static double size8 = screenHeight / getSize(8);
  static double size10 = screenHeight / getSize(10);
  static double size12 = screenHeight / getSize(12);
  static double size14 = screenHeight / getSize(14);
  static double size15 = screenHeight / getSize(15);
  static double size16 = screenHeight / getSize(16);
  static double size18 = screenHeight / getSize(18);
  static double size20 = screenHeight / getSize(20);
  static double size22 = screenHeight / getSize(22);
  static double size24 = screenHeight / getSize(24);
  static double size26 = screenHeight / getSize(26);
  static double size28 = screenHeight / getSize(28);
  static double size30 = screenHeight / getSize(30);
  static double size32 = screenHeight / getSize(32);
  static double size35 = screenHeight / getSize(35);
  static double size36 = screenHeight / getSize(36);
  static double size40 = screenHeight / getSize(40);
  static double size45 = screenHeight / getSize(45);
  static double size48 = screenHeight / getSize(48);
  static double size50 = screenHeight / getSize(50);
  static double size54 = screenHeight / getSize(54);
  static double size55 = screenHeight / getSize(55);
  static double size56 = screenHeight / getSize(56);
  static double size58 = screenHeight / getSize(58);
  static double size60 = screenHeight / getSize(60);
  static double size64 = screenHeight / getSize(64);
  static double size70 = screenHeight / getSize(70);
  static double size72 = screenHeight / getSize(72);
  static double size80 = screenHeight / getSize(80);
  static double size99 = screenHeight / getSize(99);
  static double size114 = screenHeight / getSize(114);
  static double size146 = screenHeight / getSize(146);
  static double size150 = screenHeight / getSize(150);
  static double size172 = screenHeight / getSize(172);
  static double size275 = screenHeight / getSize(275);
  static double size295 = screenHeight / getSize(295);
  static double size315 = screenHeight / getSize(315);
  static double size478 = screenHeight / getSize(478);
  static double size550 = screenHeight / getSize(550);

  static double width5 = screenWidth / getHorizontalSize(5);
  static double width10 = screenWidth / getHorizontalSize(10);
  static double width15 = screenWidth / getHorizontalSize(15);
  static double width20 = screenWidth / getHorizontalSize(20);
  static double width30 = screenWidth / getHorizontalSize(30);
  static double width68 = screenWidth / getHorizontalSize(68);
  static double width72 = screenWidth / getHorizontalSize(72);
  static double width80 = screenWidth / getHorizontalSize(80);
  static double width95 = screenWidth / getHorizontalSize(95);
  static double width140 = screenWidth / getHorizontalSize(140);
  static double width150 = screenWidth / getHorizontalSize(150);
  static double width180 = screenWidth / getHorizontalSize(180);
  static double width190 = screenWidth / getHorizontalSize(190);
  static double width205 = screenWidth / getHorizontalSize(205);
  static double width275 = screenWidth / getHorizontalSize(275);

  static double lineHeight = 1.5;

  static double onBoardingImageSize = screenHeight / getSize(406);

  static double allsetImageHeight = screenHeight / getSize(304);
  static double allsetImageWidth = screenWidth / getHorizontalSize(275);

  static double buttonSize = screenWidth * 0.84;

  //bottom bar height

  static double bottomBarHeight120 = screenHeight / getSize(120);

  static double getSize(double size) {
    return heightOfTheUIScreenInPix / size;
  }

  static double getHorizontalSize(double size) {
    return widthOfTheUIScreenInPix / size;
  }
}
