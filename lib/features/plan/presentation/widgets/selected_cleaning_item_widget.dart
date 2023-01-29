import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/colors_manager.dart';
import '../../../../core/utils/styles.dart';

class SelectedCleaningItemWidget extends StatelessWidget {
   SelectedCleaningItemWidget({Key? key,required this.onTap, required this.image, required this.text, required this.selected}) : super(key: key);
final String image;
final String text;
final bool selected;
Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return     Column(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          height: 112,
          width: 136,
          decoration: BoxDecoration(
            color: ColorManager.regtangleColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: SvgPicture.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: Styles.textStyle10,
        ),
        const SizedBox(
          height: 15,
        ),
        InkWell(
          onTap: onTap,
          child: Image.asset(
            selected? AssetsManager.tick : AssetsManager.circle,
            height: 19,
            width: 19,
          ),
        ),
      ],
    );
  }
}
