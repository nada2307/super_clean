import 'package:flutter/material.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/colors_manager.dart';
import '../../../../core/utils/styles.dart';
class SelectedFrequencyItemWidget extends StatelessWidget {
   SelectedFrequencyItemWidget({Key? key,required this.onTap ,required this.text, required this.selected}) : super(key: key);
final String text;
final bool selected;
Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            AssetsManager.rectangle,
            height: 40,
            width: 80,
            color: selected? ColorManager.pink: null,
          ),
          Text(
            text,
            style: Styles.textStyle10.copyWith(
                color: selected? ColorManager.white: ColorManager.primaryLight),
          )
        ],
      ),
    );
  }
}
