import 'package:flutter/material.dart';
import 'package:phimfree_app/src/components/base/scaffold/app_scaffold.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffoldWidget(
      title: 'PHIM FREE APP',
      isBack: false,
      child: Center(
        child: Text('home page'),
      ),
    );
  }
}
