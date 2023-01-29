import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/colors_manager.dart';
import '../../../../core/utils/styles.dart';

class SelectedExtrasItemWidget extends StatelessWidget {
  const SelectedExtrasItemWidget({Key? key, required this.image, required this.text, required this.num}) : super(key: key);

  final String image;
  final String text;
  final int num;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  AssetsManager.circle,
                  height: 60,
                  width: 60,
                ),
                SvgPicture.asset(
                  image,
                  height: 31,
                  width: 18,
                ),
              ],
            ),
            if(num>0)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: ColorManager.pink,
                  borderRadius:
                  BorderRadius.circular(15),
                ),
                constraints: const BoxConstraints(
                  minWidth: 20,
                  minHeight: 20,
                ),
                child: Center(
                  child: Text(
                    num.toString(),
                    style: Styles.textStyle10.copyWith(
                      color: ColorManager.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8,),
        Opacity(
          opacity: 0.83,
          child: Text(text,
          style: Styles.textStyle10,
          ),
        )
      ],
    );
  }
}
