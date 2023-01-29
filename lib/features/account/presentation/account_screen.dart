import 'package:flutter/material.dart';
import 'package:super_clean_app/features/account/presentation/widgets/account_screen_body.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AccountScreenBody(),
    );
  }
}
