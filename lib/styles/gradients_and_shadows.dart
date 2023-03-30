import 'package:fit_x/styles/app_colors.dart';
import 'package:flutter/material.dart';

class AppGradients {
  static LinearGradient xlogoTextGradient = const LinearGradient(
    colors: [
      AppColors.secondaryColor3,
      AppColors.brandColor2,
    ],
  );

  static LinearGradient blueLinear = const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: AppColors.primaryGradienColor,
    stops: [0.0, 1.2445],
  );

  static LinearGradient purpleLinear = const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: AppColors.secondaryGradienColor,
    stops: [0.0, 1.2445],
  );

  static LinearGradient blueLinearWithOpacity = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      AppColors.brandColor2.withOpacity(0.2),
      AppColors.brandColor1.withOpacity(0.2)
    ],
    stops: const [0.0, 1.2445],
  );

  static LinearGradient heartBeatWaveGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      const Color(0xFF93A7FE).withOpacity(0.5),
      AppColors.whiteColor.withOpacity(0.5)
    ],
    stops: const [0.0, 1.3],
  );

  static LinearGradient caloriesLinear = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: AppColors.caloriesGradienColor,
    stops: [0.0, 0.6786],
  );

  static LinearGradient waterIntakeLinear = const LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: AppColors.caloriesGradienColor,
    stops: [0.0, 0.3786],
  );
}

class AppShadows {
  static List<BoxShadow>? blueShadow = const [
    BoxShadow(
      color: Color.fromRGBO(149, 173, 254, 0.3),
      offset: Offset(0, 10),
      blurRadius: 22,
    ),
  ];
}
