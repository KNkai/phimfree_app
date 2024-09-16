import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final bool isBack;
  const AppBarWidget({super.key, required this.title, this.isBack = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 0,
      padding: const EdgeInsets.all(0),
      child: Stack(
        children: [
          if (isBack)
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton.filled(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                ),
              ),
            ),
          Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
