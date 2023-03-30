import 'package:fit_x/controllers/base_controller.dart';
import 'package:get/get.dart';

class LoginController extends BaseController {
  var hidePassword = true.obs;

  void showPassword() {
    hidePassword.value = !hidePassword.value;
  }
}
