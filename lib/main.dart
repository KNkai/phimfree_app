import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phimfree_app/src/pages/splash/splash.page.dart';
import 'package:phimfree_app/src/utils/colors.dart';

import 'src/controllers/binding/binding.controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: BindingController(),
      title: 'PHIM FREE',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff2f2f2f)),
        useMaterial3: true,
        textTheme: TextTheme(
          bodyMedium: GoogleFonts.varelaRound(color: AppColors.text),
          bodyLarge: GoogleFonts.varelaRound(color: AppColors.text),
          bodySmall: GoogleFonts.varelaRound(color: AppColors.text),
        ),
      ),
      home: const SplashPage(),
    );
  }
}
