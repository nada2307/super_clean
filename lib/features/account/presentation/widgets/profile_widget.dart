import 'package:flutter/material.dart';
import 'package:super_clean_app/core/utils/assets_manager.dart';
import 'package:super_clean_app/core/utils/colors_manager.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  static const double topHigh = 100;
  static const double profileHigh = 140;

  @override
  Widget build(BuildContext context) {
    var top = topHigh - profileHigh * 1.2;

    return  Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [

        //account
        Container(
          alignment: Alignment.bottomLeft,
          width: double.infinity,
          height: topHigh,
          decoration: const BoxDecoration(
            color: ColorManager.grey,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
            child: Text(
              'Account',
              style: TextStyle(
                  color: ColorManager.greyDark,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),

        //profile
        Positioned(
          top: top,
          child: Image.asset(
            AssetsManager.profile,
            height: 140,
            width: 140,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
