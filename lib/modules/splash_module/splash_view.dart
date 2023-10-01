import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sample/modules/splash_module/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
          child: Image.asset(controller.imagePath, height: 100.h)),
    );
  }
}
