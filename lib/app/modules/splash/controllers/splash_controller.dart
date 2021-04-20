import 'dart:async';

import 'package:coldstore_admin_app/app/modules/authentication/views/authentication_view.dart';
import 'package:coldstore_admin_app/app/modules/home/views/home_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final splashDelay = 3;
  final String versionName = 'V1.0'.obs();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigation);
  }

  void navigation() {
    if (FirebaseAuth.instance.currentUser != null) {
      Get.off(() => HomeView());
    } else {
      Get.off(() => AuthenticationView());
    }
  }

  @override
  void onClose() {}
}
