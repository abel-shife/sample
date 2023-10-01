import 'package:get/get.dart';
import 'package:sample/modules/dashboard_module/dashboard_view.dart';
import 'package:sample/modules/login_module/login_binding.dart';
import 'package:sample/modules/login_module/login_view.dart';
import 'package:sample/modules/splash_module/splash_binding.dart';
import 'package:sample/modules/splash_module/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static String initial = Routes.splash;
  static final routes = [
    GetPage(
        name: Routes.splash,
        page: () => const SplashView(),
        binding: SplashBinding()),
    GetPage(
        name: Routes.login,
        page: () => const LoginView(),
        binding: LoginBinding()),
    GetPage(
      name: Routes.dashboard,
      page: () => const DashBoardView(),
    ),
  ];
}
