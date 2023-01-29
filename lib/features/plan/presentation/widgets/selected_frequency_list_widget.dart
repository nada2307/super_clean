import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_clean_app/features/plan/presentation/manger/plan_cubit/plan_cubit.dart';
import 'package:super_clean_app/features/plan/presentation/manger/plan_cubit/plan_states.dart';

import '../../../../core/utils/styles.dart';
import 'selected_frequency_item_widget.dart';

class SelectedFrequencyListWidget extends StatelessWidget {
  const SelectedFrequencyListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlanCubit, PlanStates>(
        builder: (BuildContext context, state) {
      var cubit = PlanCubit.get(context);
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Opacity(
              opacity: 0.7,
              child: Text(
                'Selected Frequency',
                style: Styles.textStyle12Ubuntu,
              ),
            ),
            const SizedBox(
              height: 21,
            ),
            Row(
              children: [
                SelectedFrequencyItemWidget(
                  text: 'Weekly',
                  selected: cubit.isWeekly,
                  onTap: () {
                    cubit.changeFrequency('w');
                  },
                ),
                const Spacer(),
                SelectedFrequencyItemWidget(
                  text: 'Bi-weekly',
                  selected: cubit.isBiWeekly,
                  onTap: () {
                    cubit.changeFrequency('b');
                  },
                ),
                const Spacer(),
                SelectedFrequencyItemWidget(
                  text: 'Monthly',
                  selected: cubit.isMonthly,
                  onTap: () {
                    cubit.changeFrequency('m');
                  },
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
