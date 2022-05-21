import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ZekrCounterState {
  final int count;
  ZekrCounterState(this.count);
}

class ZekrCountCubit extends Cubit<ZekrCounterState> {
  int _count;

  ZekrCountCubit(this._count) : super(ZekrCounterState(_count));

  static ZekrCountCubit of(BuildContext context) {
    return BlocProvider.of<ZekrCountCubit>(context);
  }

  decrease() {
    if (_count >= 1) {
      _count--;
      emit(ZekrCounterState(_count));
    }
  }

  reset(int count ){
    _count = count ;
    emit(ZekrCounterState(_count));
  }


}
