import 'package:flutter/material.dart';
import 'package:super_clean_app/core/utils/assets_manager.dart';
import 'package:super_clean_app/core/utils/colors_manager.dart';
import 'package:super_clean_app/core/utils/styles.dart';
import 'package:super_clean_app/core/widgets/bottom_circle_widget.dart';
import 'package:super_clean_app/core/widgets/top_circle_widget.dart';
import 'package:super_clean_app/features/account/presentation/account_screen.dart';

class OnBoardingScreenBody extends StatelessWidget {
  const OnBoardingScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopCircleWidget(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsManager.onBoarding,
                  height: 200,
                  width: 250,
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Clean Home Clean Life',
                  textAlign: TextAlign.center,
                  style: Styles.textStyle25.copyWith(
                      color: ColorManager.white, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Sed ut perspiciatis unde omnis iste natus error sit',
                  style: Styles.textStyle15.copyWith(
                      color: ColorManager.white, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountScreen(),
                      ),
                          (rout) {
                        return false;
                      },
                    );
                  },
                  minWidth: 150,
                  color: ColorManager.pink,
                  child: Text('Get Started',
                      style: Styles.textStyle11.copyWith(
                          color: ColorManager.white,
                          fontWeight: FontWeight.w800)),
                )
              ],
            ),
          ),
        ),
        const BottomCircleWidget(),
      ],
    );
  }
}
