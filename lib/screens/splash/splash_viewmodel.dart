import 'dart:async';
import 'package:get/get.dart';
import 'package:simplifying/screens/signin/signIn_view.dart';

class SplashViewModel extends GetxController {
  @override
  void onReady() {
    startTime();
    super.onReady();
  }

  startTime() async {
    Timer(const Duration(seconds: 3), loadNextScreen);
  }

  loadNextScreen() {
    Get.off(() => const SignInView());
  }
}
