import 'package:flutter/material.dart';
import 'package:super_clean_app/core/utils/colors_manager.dart';
import 'package:super_clean_app/core/utils/styles.dart';
import 'package:table_calendar/table_calendar.dart';

class BookingCalendarWidget extends StatefulWidget {
  BookingCalendarWidget(
      {Key? key, required this.selectDay, required this.calendarFormat})
      : super(key: key);
  DateTime selectDay;
  CalendarFormat calendarFormat;

  @override
  State<BookingCalendarWidget> createState() => _BookingCalendarWidgetState();
}

class _BookingCalendarWidgetState extends State<BookingCalendarWidget> {
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      currentDay: widget.selectDay,
      calendarStyle: CalendarStyle(
        selectedDecoration: const BoxDecoration(
            color: ColorManager.pink, shape: BoxShape.circle),
        disabledTextStyle: Styles.textStyle13Ubuntu,
        weekendTextStyle: Styles.textStyle13Ubuntu,
        defaultTextStyle: Styles.textStyle13Ubuntu,
        holidayTextStyle: Styles.textStyle13Ubuntu,
        rangeStartTextStyle: Styles.textStyle13Ubuntu,
        rangeEndTextStyle: Styles.textStyle13Ubuntu,
        outsideTextStyle: Styles.textStyle13Ubuntu,
        selectedTextStyle: Styles.textStyle13Ubuntu,
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: Styles.textStyle13Ubuntu,
        weekendStyle: Styles.textStyle13Ubuntu,
      ),
      firstDay: DateTime.utc(2019, 1, 1),
      lastDay: DateTime.utc(2024, 1, 1),
      focusedDay: widget.selectDay,
      headerStyle: HeaderStyle(
          leftChevronIcon: const Icon(
            Icons.chevron_left_rounded,
            color: ColorManager.white,
          ),
          rightChevronIcon: const Icon(
            Icons.chevron_right_rounded,
            color: ColorManager.white,
          ),
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle: Styles.textStyle11Ubuntu),
      calendarFormat: widget.calendarFormat,
      selectedDayPredicate: (day) {
        return isSameDay(widget.selectDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        if (!isSameDay(widget.selectDay, selectedDay)) {
          setState(() {
            widget.selectDay = selectedDay;
          });
        }
      },
    );
  }
}
