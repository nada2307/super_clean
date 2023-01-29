import 'package:flutter/material.dart';
import 'package:super_clean_app/core/utils/assets_manager.dart';
import 'package:super_clean_app/core/utils/colors_manager.dart';
import 'package:super_clean_app/features/account/presentation/widgets/account_item_list_widget.dart';

class ShareListWidget extends StatelessWidget {
  const ShareListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: double.infinity,
      color: ColorManager.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          //facebook
          AccountItemListWidget(
            image: AssetsManager.facebook,
            text: 'Facebook',
          ),
          const SizedBox(
            height: 20,
          ),

          //twitter
          AccountItemListWidget(
            image: AssetsManager.twitter,
            text: 'Twitter',
          ),
          const SizedBox(
            height: 20,
          ),

          //gmail
          AccountItemListWidget(
            image: AssetsManager.gmail,
            text: 'Gmail',
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
