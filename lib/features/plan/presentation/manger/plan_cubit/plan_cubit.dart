
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_clean_app/features/plan/presentation/manger/plan_cubit/plan_states.dart';

class PlanCubit extends Cubit<PlanStates> {
  PlanCubit() : super(InitialState());

  static PlanCubit get(BuildContext context) => BlocProvider.of(context);

  bool isInitial = true;
  bool isUpkeep = false;

  bool isWeekly = false;
  bool isBiWeekly = false;
  bool isMonthly = true;

  void changeCleanType(String type){
    if(type == 'i'){
      isInitial = true;
      isUpkeep = false;
    }
    else{
      isInitial = false;
      isUpkeep = true;
    }
    emit(ChangeCleanTypeState());

  }

  void changeFrequency(String time){
    if(time == 'w'){
      isWeekly = true;
      isBiWeekly = false;
      isMonthly = false;
    }
    else if(time == 'b'){
      isWeekly = false;
      isBiWeekly = true;
      isMonthly = false;
    }
    else if(time == 'm'){
      isWeekly = false;
      isBiWeekly = false;
      isMonthly = true;
    }
    emit(ChangeFrequencyState());
  }
}