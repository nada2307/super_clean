import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_clean_app/features/plan/presentation/manger/plan_cubit/plan_cubit.dart';

import 'presentation/widgets/plan_screen_body.dart';

class PlanScreen extends StatelessWidget {
  const PlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlanCubit>(
      create: (context) => PlanCubit(),
      child: const Scaffold(
        body: PlanScreenBody(),
      ),
    );
  }
}
