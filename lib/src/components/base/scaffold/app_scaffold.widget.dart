import 'package:flutter/material.dart';

class AppScaffoldWidget extends StatelessWidget {
  final Widget child;
  final String title;
  final bool isBack;
  const AppScaffoldWidget({
    super.key,
    required this.child,
    required this.title,
    this.isBack = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).viewPadding.top),

          ///appbar
          Container(
            width: double.infinity,
            height: 120,
            padding: const EdgeInsets.all(10),
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
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
