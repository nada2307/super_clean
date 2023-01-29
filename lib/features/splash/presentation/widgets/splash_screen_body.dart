import 'package:flutter/material.dart';
import 'package:super_clean_app/core/widgets/top_circle_widget.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/widgets/bottom_circle_widget.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopCircleWidget(),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              AssetsManager.logo,
              height: 200,
              width: 250,
            ),
          ),
        ),
        const BottomCircleWidget(),
      ],
    );
  }
}
