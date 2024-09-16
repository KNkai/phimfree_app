import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phimfree_app/src/components/widget/navbar/navbar.widget.dart';

import '../../controllers/auth/auth.controller.dart';
import '../auth/login/login.page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller) {
          return const Scaffold(
            backgroundColor: Colors.green,
            body: Center(
              child: Text(
                'PHIM FREE APP',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          );
        });
  }
}

class SplashController extends GetxController {
  // Find the existing instance of AuthController
  final AuthController _authController = Get.find<AuthController>();

  @override
  void onInit() {
    super.onInit();
    _navigateBasedOnAuth();
  }

  Future<void> _navigateBasedOnAuth() async {
    await _authController.getUser(); // Wait for the user data to be fetched
    if (_authController.hasUser.value) {
      // If user exists, navigate to HomePage
      Get.off(() => const NavBarWidget(), transition: Transition.cupertino);
    } else {
      // If no user, navigate to LoginPage
      Get.off(() => const LoginPage(), transition: Transition.cupertino);
    }
  }
}
