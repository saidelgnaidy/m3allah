import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

@immutable
class AzkarState {}

class AzkarCubit extends Cubit<AzkarState> {
  AzkarCubit() : super(AzkarState());

  final ItemScrollController itemScrollController = ItemScrollController();

  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
  Timer? _timer;
  double toolBarPos = -80;

  scrollTo(int index) {
    itemScrollController.scrollTo(
      index: index + 1,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      alignment: .25,
    );
  }

  openToolBar() {
    toolBarPos = toolBarPos == -80 ? 8 : -80;
    toggleToolBar();
    emit(AzkarState());
  }

  isToolBarOpen() => toolBarPos == -80;

  toggleToolBar() {
    _timer?.cancel();
    _timer = Timer(const Duration(seconds: 3), () {
      if (toolBarPos == 8) {
        toolBarPos = toolBarPos == -80 ? 8 : -80;
        emit(AzkarState());
      }
    });
  }
  
}
