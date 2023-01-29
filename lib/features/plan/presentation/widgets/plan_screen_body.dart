import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_clean_app/features/plan/presentation/manger/plan_cubit/plan_cubit.dart';
import '../../../../core/utils/colors_manager.dart';
import '../../../../core/utils/styles.dart';
import 'selected_cleaning_list_widget.dart';
import 'selected_extras_list_widget.dart';
import 'selected_frequency_list_widget.dart';
class PlanScreenBody extends StatelessWidget {
  const PlanScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  color: ColorManager.primary,
                  child: Center(
                    child: Text(
                      'Your Plan',
                      style: Styles.textStyle14Ubuntu,
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: ColorManager.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SelectedCleaningListWidget(),
                              SizedBox(
                                height: 25,
                              ),
                              SelectedFrequencyListWidget(),
                              SizedBox(
                                height: 25,
                              ),
                              SelectedExtraListWidget(),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
