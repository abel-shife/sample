import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sample/config/style_config.dart';
import 'package:sample/modules/login_module/login_controller.dart';
import 'package:sample/routes/app_pages.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 150.h),
            Text('Log In',
                style: poppins20Bold),
            SizedBox(height: 30.h),
            Form(
              key: controller.formKey,
              child: TextFormField(
                controller: controller.emailController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(0.0),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        controller.emailController.text = '';
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: const Icon(FontAwesomeIcons.circleXmark),
                      ),
                    ),
                    label: const Text('E-mail', style: poppinsGrey),
                    enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
                style: poppinsGrey.copyWith(color: Colors.black),
                validator: (value) {
                  return controller.validateEmail(value);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Find e-mail', style: poppinsGrey),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    height: 10.h,
                    width: 1.5.w,
                    color: Colors.grey),
                const Text('Find password', style: poppinsGrey),
              ],
            ),
            SizedBox(height: 5.h),
            Obx(
              () => MaterialButton(
                  minWidth: 250.w,
                  height: 32.h,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(color: Colors.grey)),
                  elevation: 0.0,
                  color: controller.buttonColor.value,
                  onPressed: () {
                    if (controller.formKey.currentState!.validate()) {
                      Get.toNamed(Routes.dashboard);
                    }
                  },
                  child: Text(controller.buttonText.value,
                      style: poppinsGrey.copyWith(color: Colors.white))),
            ),
            SizedBox(height: 5.h)
          ],
        ),
      ),
    );
  }
}
