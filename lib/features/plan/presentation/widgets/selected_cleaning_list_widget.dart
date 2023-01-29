import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_clean_app/features/plan/presentation/manger/plan_cubit/plan_cubit.dart';
import 'package:super_clean_app/features/plan/presentation/manger/plan_cubit/plan_states.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/styles.dart';
import 'selected_cleaning_item_widget.dart';

class SelectedCleaningListWidget extends StatelessWidget {
  const SelectedCleaningListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlanCubit, PlanStates>(
      builder: (BuildContext context, state) {
        var cubit = PlanCubit.get(context);
      return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Opacity(
              opacity: 0.7,
              child: Text(
                'Selected Cleaning',
                style: Styles.textStyle12Ubuntu,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children:  [
                SelectedCleaningItemWidget(
                  image: AssetsManager.initialCleaning,
                  text: 'Initial Cleaning',
                  selected: cubit.isInitial,
                  onTap: (){
                    cubit.changeCleanType('i');
                  },

                ),
                const Spacer(),
                SelectedCleaningItemWidget(
                  image: AssetsManager.jpkeepCleaning,
                  text: 'Upkeep Cleaning ',
                  selected: cubit.isUpkeep,
                  onTap: (){
                    cubit.changeCleanType('u');
                  },
                ),
              ],
            ),
          ],
        ),
      );},
    );
  }
}
