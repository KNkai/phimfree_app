import 'package:auto_size_text_plus/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phimfree_app/src/utils/colors.dart';
import '../navbar.controller.dart';

class NavBarCustom extends StatelessWidget {
  const NavBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<NavBarController>(
      builder: (controller) {
        return Container(
          // padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
          // padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30), // Rounded corners

            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 10,
              ),
            ],
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(
                icon: Icons.home,
                label: 'Home',
                index: 0,
                controller: controller,
              ),
              _buildNavItem(
                icon: Icons.search,
                label: 'Search',
                index: 1,
                controller: controller,
              ),
              _buildNavItem(
                icon: Icons.bookmark,
                label: 'Watchlist',
                index: 2,
                controller: controller,
              ),
              _buildNavItem(
                icon: Icons.person,
                label: 'Profile',
                index: 3,
                controller: controller,
              ),
            ],
          ),
        );
      },
    );
  }

  // Helper method to build each navigation item with animation
  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required int index,
    required NavBarController controller,
  }) {
    bool isSelected = controller.currentIndex.value == index;

    return Expanded(
      child: ElevatedButton(
        onPressed: () => controller.changePage(index), // Change page on tap
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.only(top: 15, bottom: 10),
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          elevation: 0,
          backgroundColor: AppColors.primary,
          splashFactory: InkRipple.splashFactory,
          foregroundColor: AppColors.text,
          visualDensity: VisualDensity.comfortable,
        ),

        child: AnimatedContainer(
          duration:
              const Duration(milliseconds: 300), // Duration of the animation
          curve: Curves.easeInOut, // Animation curve
          padding: EdgeInsets.symmetric(
              horizontal:
                  isSelected ? 8 : 4), // Adjust padding based on selection
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Transform.scale(
                scale: isSelected ? 1.2 : 1.0, // Scale icon when selected
                child: Icon(
                  icon,
                  color: isSelected
                      ? AppColors.button // Selected icon color
                      : AppColors.text, // Unselected icon color
                  size: 25,
                ),
              ),
              const SizedBox(height: 5),
              AutoSizeText(
                label,
                maxLines: 1,
                style: TextStyle(
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  color: isSelected
                      ? AppColors.button // Selected icon color
                      : AppColors.text, // Unselected icon color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
