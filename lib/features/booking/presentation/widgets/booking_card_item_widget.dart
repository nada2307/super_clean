import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:super_clean_app/core/utils/assets_manager.dart';
import 'package:super_clean_app/core/utils/colors_manager.dart';
import 'package:super_clean_app/core/utils/styles.dart';
import 'package:super_clean_app/features/booking/data/models/booking_model.dart';

class BookingCardItemWidget extends StatelessWidget {
  final BookingModel bookingModel;

  BookingCardItemWidget({super.key, required this.bookingModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: ColorManager.cardColor,
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            bookingModel.image,
            width: 70,
            height: 70,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bookingModel.name,
                  style: Styles.textStyle10Ubuntu.copyWith(
                      color: ColorManager.greyDark,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  bookingModel.cleanType,
                  style: Styles.textStyle13Ubuntu.copyWith(
                      color: Colors.black12, fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.watch_later_rounded,
                      color: ColorManager.pink,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${bookingModel.from} - ${bookingModel.to}',
                      style: Styles.textStyle9Ubuntu,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'Client Rating',
                      style: Styles.textStyle13Ubuntu.copyWith(
                          color: Colors.black12, fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    RatingBarIndicator(
                      rating: bookingModel.rate,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star_rounded,
                        color: ColorManager.pink,
                      ),
                      itemCount: 5,
                      itemSize: 15.0,
                      direction: Axis.horizontal,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.black12,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Image.asset(
                      AssetsManager.telephoneIcon,
                      height: 14,
                      width: 14,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      AssetsManager.messageIcon,
                      height: 13,
                      width: 17,
                    ),
                    const Spacer(),
                    Text(
                      bookingModel.paid ? 'Paid' : '${bookingModel.price}\$',
                      style: Styles.textStyle10Ubuntu.copyWith(
                        color: bookingModel.paid
                            ? ColorManager.pink
                            : const Color(0xFF5C4DB1),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
