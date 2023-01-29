import 'package:flutter/material.dart';
import 'package:super_clean_app/core/utils/colors_manager.dart';

import 'features/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Super Clean',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorManager.primary,
       primarySwatch: ColorManager.themeColor,
      ),
      home: const SplashScreen(),
    );
  }
}