import 'package:get/get.dart';
import 'package:sample/modules/login_module/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
