import 'package:flutter/material.dart';
import 'package:super_clean_app/core/utils/assets_manager.dart';
import 'package:super_clean_app/core/utils/colors_manager.dart';
import 'package:super_clean_app/features/account/presentation/widgets/account_item_list_widget.dart';
import 'package:super_clean_app/features/booking/presentation/booking_screen.dart';
import 'package:super_clean_app/features/plan/plan_screen.dart';

class AccountListWidget extends StatelessWidget {
  const AccountListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 30, vertical: 10),
      width: double.infinity,
      color: ColorManager.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          // notification
          AccountItemListWidget(
            image: AssetsManager.notification,
            text: 'Notification',
          ),
          const SizedBox(
            height: 20,
          ),

          //my booking
          AccountItemListWidget(
            image: AssetsManager.calender,
            text: 'My Booking',
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const BookingScreen()));
            },
          ),
          const SizedBox(
            height: 20,
          ),

          //my plan
          AccountItemListWidget(
            image: AssetsManager.tick,
            text: 'My Plan',
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PlanScreen()));
            },
          ),
          const SizedBox(
            height: 20,
          ),

          //address
          AccountItemListWidget(
            image: AssetsManager.address,
            text: 'Addresses',
          ),
        ],
      ),
    );
  }
}
