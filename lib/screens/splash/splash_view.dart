import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  final SplashViewModel splashViewModel = Get.put(SplashViewModel());

  SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5956E9),
      body: Center(
        child: Image(
          width: Get.width * 0.7,
          image: const AssetImage('assets/images/app_logo_white.png'),
        ),
      ),
    );
  }
}
