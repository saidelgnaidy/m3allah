import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

@immutable
class AzkarState {
  final double toolBarPos;
  const AzkarState({required this.toolBarPos});
}

class AzkarCubit extends Cubit<AzkarState> {
  AzkarCubit() : super(const AzkarState(toolBarPos: -80));

  static AzkarCubit of(BuildContext context) {
    return BlocProvider.of<AzkarCubit>(context);
  }

  final ItemScrollController itemScrollController = ItemScrollController();

  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
  Timer? _timer;
  double _toolBarPos = -80;

  scrollTo(int index) {
    itemScrollController.scrollTo(
      index: index + 1,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      alignment: .25,
    );
  }

  openToolBar() {
    _toolBarPos = _toolBarPos == -80 ? 8 : -80;
    resetTimer();
    emit(AzkarState(toolBarPos: _toolBarPos));
  }

  isToolBarOpen() => _toolBarPos == -80;

  resetTimer() {
    _timer?.cancel();
    _timer = Timer(const Duration(seconds: 3), () {
      if (_toolBarPos == 8) {
        _toolBarPos = _toolBarPos == -80 ? 8 : -80;
        emit(AzkarState(toolBarPos: _toolBarPos));
      }
    });
  }
}
