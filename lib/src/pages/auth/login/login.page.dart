import 'package:flutter/material.dart';

import '../../../components/base/scaffold/app_scaffold.widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffoldWidget(
      child: Center(
        child: Text('login page'),
      ),
    );
  }
}
