import 'package:flutter/material.dart';
import 'package:super_clean_app/core/utils/colors_manager.dart';

import '../../../core/utils/assets_manager.dart';
import 'widgets/onBoarding_bottom_list_widget.dart';

class FirstOnBoardingScreen extends StatelessWidget {
  const FirstOnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(35),
                  child: Image.asset(
                    AssetsManager.boarding,
                    fit: BoxFit.fill,
                    //  color: Colors.red,
                  ),
                ),
              ),
              const Expanded(
                flex: 6,
                child: OnBoardingBottomListWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
