import 'package:flutter/material.dart';

import 'widgets/booking_screen_body.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookingScreenBody(),
    );
  }
}
