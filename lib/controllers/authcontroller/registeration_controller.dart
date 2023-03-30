import 'package:fit_x/controllers/base_controller.dart';
import 'package:get/get_rx/get_rx.dart';

class RegisterationController extends BaseController {
  var hidePassword = true.obs;

  void showPassword() {
    hidePassword.value = !hidePassword.value;
  }
}
