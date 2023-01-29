import 'package:flutter/material.dart';
import 'package:super_clean_app/features/account/presentation/account_screen.dart';
import 'package:super_clean_app/features/onboarding/presentation/onboarding_screen.dart';

import '../../../../core/utils/colors_manager.dart';
import '../../../../core/utils/styles.dart';

class OnBoardingBottomListWidget extends StatelessWidget {
  const OnBoardingBottomListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: ColorManager.primary,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Cleaning On Demand',
            style: Styles.textStyle19Ubuntu,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Book an appointment in less than 60 seconds and get on the schedule as early as tomorrow.',
            style: Styles.textStyle16.copyWith(
              color: ColorManager.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OnBoardingScreen(),
                ),
              );

            },
            backgroundColor: ColorManager.pink,
            child: const Icon(
              Icons.arrow_forward_ios_rounded,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextButton(
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
            child: Text(
              'Skip',
              style: Styles.textStyle13Nunito,
            ),
          ),
        ],
      ),
    );
  }
}
