import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:super_clean_app/core/utils/assets_manager.dart';
import 'package:super_clean_app/core/utils/colors_manager.dart';
import 'package:super_clean_app/core/utils/styles.dart';
import 'package:super_clean_app/features/booking/presentation/widgets/booking_lis_view_widgett.dart';
import 'package:table_calendar/table_calendar.dart';

class BookingScreenBody extends StatefulWidget {
  const BookingScreenBody({Key? key}) : super(key: key);

  @override
  State<BookingScreenBody> createState() => _BookingScreenBodyState();
}

class _BookingScreenBodyState extends State<BookingScreenBody> {
  final dateFormat = DateFormat('d MMMM y');

  CalendarFormat calendarFormat = CalendarFormat.week;
  DateTime selectDay = DateTime.now();
  var month = DateFormat.MONTH;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                  TableCalendar(
                    currentDay: selectDay,
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
                    focusedDay: selectDay,
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
                    calendarFormat: calendarFormat,
                    selectedDayPredicate: (day) {
                      return isSameDay(selectDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      if (!isSameDay(selectDay, selectedDay)) {
                        setState(() {
                          selectDay = selectedDay;
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
            Container(
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
                            onPressed: () {
                              setState(() {
                                if (calendarFormat == CalendarFormat.week) {
                                  calendarFormat = CalendarFormat.month;
                                } else {
                                  calendarFormat = CalendarFormat.week;
                                }
                              });
                            },
                            icon: Icon(
                              calendarFormat == CalendarFormat.week
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
                      dateFormat.format(selectDay),
                      style: Styles.textStyle10Ubuntu,
                    ),
                  ),
                  const BookListViwWidget(),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
