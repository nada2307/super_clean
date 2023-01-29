import 'package:flutter/material.dart';
import 'package:super_clean_app/features/onBoarding/presentation/widgets/onBoarding_screen_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child:OnBoardingScreenBody(),
      ),
    );
  }
}
