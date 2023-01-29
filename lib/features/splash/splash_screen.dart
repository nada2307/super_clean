import 'package:flutter/material.dart';
import 'package:super_clean_app/features/onBoarding/presentation/first_onBoarding_screen.dart';

import 'presentation/widgets/splash_screen_body.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToOnBoarding();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SplashScreenBody(),
      ),
    );
  }

  void navigateToOnBoarding() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const FirstOnBoardingScreen(),
          ),
          (rout) {
            return false;
          },
        );
      },
    );
  }
}
