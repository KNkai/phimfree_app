import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/navbar_body.widget.dart';
import 'components/navbar_custom.widget.dart';
import 'navbar.controller.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<NavBarController>(
        init: NavBarController(),
        builder: (controller) {
          return const Stack(
            children: [
              Positioned.fill(
                // bottom: 60,
                child: NavbarBody(), // Will hold IndexedStack
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: NavBarCustom(), // Custom BottomNavigationBar
              ),
            ],
          );
        },
      ),
    );
  }
}
