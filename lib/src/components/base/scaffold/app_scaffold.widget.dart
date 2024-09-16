import 'package:flutter/material.dart';
import 'package:phimfree_app/src/components/base/appbar/app_bar.widget.dart';
import 'package:phimfree_app/src/utils/colors.dart';

class AppScaffoldWidget extends StatelessWidget {
  final Widget child;
  final String title;
  final bool isBack;
  final Widget? appBar;
  const AppScaffoldWidget({
    super.key,
    required this.child,
    this.title = '',
    this.isBack = true,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          appBar ??
              (title != ''
                  ? AppBarWidget(title: title, isBack: isBack)
                  : const SizedBox.shrink()),
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}
