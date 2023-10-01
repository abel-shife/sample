import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey();
  late TextEditingController emailController;

  RxString buttonText='Enter your e-mail address'.obs;

  Rx<Color> buttonColor=const Color(0xff808080).obs;

  @override
  void onInit() {
    emailController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

   validateEmail(String? value) {
    if (!GetUtils.isEmail(value!)) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        buttonText.value = 'Enter your e-mail address';
        buttonColor.value = const Color(0xff808080);
      });

      return 'Not valid email';
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      buttonText.value = 'Next';
      buttonColor.value = const Color(0xff000000);
    });
    return null;
  }
}
