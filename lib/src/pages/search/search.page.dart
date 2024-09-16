import 'package:flutter/material.dart';
import 'package:phimfree_app/src/components/base/scaffold/app_scaffold.widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffoldWidget(
      child: Center(
        child: Text('Search page'),
      ),
    );
  }
}
