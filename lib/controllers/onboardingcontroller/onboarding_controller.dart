import 'package:fit_x/controllers/base_controller.dart';
import 'package:get/get.dart';

class OnBoardingController extends BaseController {
  var onBoardingPageNumber = 0.obs;

  void updatePageNumber(int page) {
    if (page <= 3) {
      onBoardingPageNumber.value = onBoardingPageNumber.value + page;
    }
  }

  double getBarProgress() {
    return (onBoardingPageNumber.value + 1) / 4;
  }
}
