import 'package:flutter/material.dart';
import 'package:phimfree_app/src/components/base/scaffold/app_scaffold.widget.dart';
import 'package:phimfree_app/src/pages/home/components/home.appbar.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffoldWidget(
      appBar: const HomeAppBarWidget(),
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 120, left: 10, right: 10),
        itemCount: 100,
        itemBuilder: (context, index) => Text('data'),
      ),
    );
  }
}
