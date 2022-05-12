import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ZekrCounterState {
  final int count;
  ZekrCounterState(this.count);
}

class ZekrCountCubit extends Cubit<ZekrCounterState> {
  int count;

  ZekrCountCubit(this.count) : super(ZekrCounterState(count));

  static ZekrCountCubit of(BuildContext context) {
    return BlocProvider.of<ZekrCountCubit>(context);
  }

  decrease() {
    if (count >= 1) {
      count--;
      emit(ZekrCounterState(count));
    }
  }
}
