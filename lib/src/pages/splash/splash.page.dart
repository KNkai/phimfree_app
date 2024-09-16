import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/home.page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: Future.delayed(
        const Duration(seconds: 3),
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Navigator.of(context).pushReplacement(
              CupertinoPageRoute(builder: (ctx) => const HomePage()));
        }
        return const Scaffold(
          backgroundColor: Colors.green,
          body: Center(
            child: Text(
              'PHIM FREE APP',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        );
      },
    );
  }
}
