import 'package:flutter/material.dart';
import 'package:super_clean_app/core/utils/colors_manager.dart';
import 'package:super_clean_app/core/utils/styles.dart';
import 'package:table_calendar/table_calendar.dart';

import 'booking_calendar_widget.dart';

class BookingTopWidget extends StatelessWidget {
  BookingTopWidget({
    Key? key,
    required this.selectDay,
    required this.calendarFormat,
  }) : super(key: key);
  final DateTime selectDay;
  CalendarFormat calendarFormat;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      color: ColorManager.primary,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Cleaner Calendar',
            style: Styles.textStyle14Ubuntu,
          ),
          BookingCalendarWidget(
            selectDay: selectDay,
            calendarFormat: calendarFormat,
          ),
        ],
      ),
    );
  }
}
