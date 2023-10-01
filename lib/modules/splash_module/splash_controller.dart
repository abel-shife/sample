import 'package:get/get.dart';
import 'package:sample/config/consts.dart';
import 'package:sample/routes/app_pages.dart';

class SplashController extends GetxController {
  String imagePath='assets/images/logo.png';

  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: splashDuration),
      () {
        Get.offAndToNamed(Routes.login);
      },
    );
    super.onInit();
  }
}
