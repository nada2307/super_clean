import 'package:flutter/material.dart';
import 'package:super_clean_app/core/utils/colors_manager.dart';
import 'package:super_clean_app/features/account/presentation/widgets/account_list_widget.dart';
import 'package:super_clean_app/features/account/presentation/widgets/profile_widget.dart';
import 'package:super_clean_app/features/account/presentation/widgets/share_list_widget.dart';

class AccountScreenBody extends StatelessWidget {
  const AccountScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: ColorManager.primary,
        child: Column(
          children: [
            //top
            Container(
              height: 150,
              color: ColorManager.primary,
            ),

            const ProfileWidget(),
            Column(
              children: [
                const AccountListWidget(),

                //share
                Container(
                  width: double.infinity,
                  color: ColorManager.grey,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
                    child: Text(
                      'Share',
                      style: TextStyle(
                          color: ColorManager.greyDark,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                const ShareListWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
