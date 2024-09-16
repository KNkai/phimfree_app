import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phimfree_app/src/pages/splash/splash.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PHIM FREE',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff2f2f2f)),
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
