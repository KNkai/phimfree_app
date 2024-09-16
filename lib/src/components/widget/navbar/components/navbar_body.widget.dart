import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../navbar.controller.dart';

class NavbarBody extends StatelessWidget {
  const NavbarBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<NavBarController>(
      builder: (controller) {
        return IndexedStack(
          index: controller
              .currentIndex.value, // Index to display the selected page
          children: controller.listPage, // List of pages to show
        );
      },
    );
  }
}
