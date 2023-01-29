import 'package:flutter/material.dart';
import 'package:super_clean_app/features/booking/data/models/booking_model.dart';
import 'package:super_clean_app/features/booking/presentation/widgets/booking_card_item_widget.dart';

class BookListViwWidget extends StatelessWidget {
  const BookListViwWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => BookingCardItemWidget(
        bookingModel: bookingList[index],
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 15,
      ),
      itemCount: bookingList.length,
    );
  }
}
