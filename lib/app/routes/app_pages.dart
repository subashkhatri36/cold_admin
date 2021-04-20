import 'package:get/get.dart';

import 'package:coldstore_admin_app/app/modules/authentication/bindings/authentication_binding.dart';
import 'package:coldstore_admin_app/app/modules/authentication/views/authentication_view.dart';
import 'package:coldstore_admin_app/app/modules/home/bindings/home_binding.dart';
import 'package:coldstore_admin_app/app/modules/home/views/home_view.dart';
import 'package:coldstore_admin_app/app/modules/splash/bindings/splash_binding.dart';
import 'package:coldstore_admin_app/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTICATION,
      page: () => AuthenticationView(),
      binding: AuthenticationBinding(),
    ),
  ];
}
