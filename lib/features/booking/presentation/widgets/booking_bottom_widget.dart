import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:super_clean_app/core/utils/assets_manager.dart';
import 'package:super_clean_app/core/utils/colors_manager.dart';
import 'package:super_clean_app/core/utils/styles.dart';
import 'package:table_calendar/table_calendar.dart';

import 'booking_lis_view_widgett.dart';

class BookingBottomWidget extends StatefulWidget {
  BookingBottomWidget({
    Key? key,
    required this.calendarFormat,
    required this.selectDay,
    required this.onPress,
  }) : super(key: key);
  CalendarFormat calendarFormat;
  DateTime selectDay;
  Function () onPress;

  @override
  State<BookingBottomWidget> createState() => _BookingBottomWidgetState();
}

class _BookingBottomWidgetState extends State<BookingBottomWidget> {
  final dateFormat = DateFormat('d MMMM y');

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      decoration: const BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          )),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  AssetsManager.down,
                ),
                IconButton(
                    onPressed: widget.onPress,
                    icon: Icon(
                      widget.calendarFormat == CalendarFormat.week
                          ? Icons.keyboard_arrow_down_rounded
                          : Icons.keyboard_arrow_up_rounded,
                      color: const Color(0XFF808BC3),
                    )),
              ],
            ),
          ),
          Opacity(
            opacity: 0.44,
            child: Text(
              dateFormat.format(widget.selectDay),
              style: Styles.textStyle10Ubuntu,
            ),
          ),
          const BookListViwWidget(),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
