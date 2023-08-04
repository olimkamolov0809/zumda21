import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zumda/app/app_images.dart';
import 'package:zumda/app/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    _navigateToHome();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset(
            AppImages.SPLASH_LOGO,
            width: 200.0,
            height: 200.0,
          ),
        ),
      ),
    );
  }

  _navigateToHome() {
    Future.delayed(const Duration(seconds: 5), () {
      Get.offNamed(AppRoutes.SINGIN);
    });
  }
}
