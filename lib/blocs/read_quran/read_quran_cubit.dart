import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:m3allah/blocs/setting_bloc/settings_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/modle/juz_list_modle/juz_list_modle.dart';
import 'package:m3allah/modle/quran/surah_model.dart';
import 'package:m3allah/views/component/const.dart';

@immutable
class ReadQuranState {}

class ReadQuranCubit extends Cubit<ReadQuranState> {
  ReadQuranCubit() : super(ReadQuranState());

  double toolBarPos = -80;
  ScrollController scrollController = ScrollController();
  double _speedFactor = 5;
  late List<FullSurah> surahList;
  JuzList? selectedJus;
  Timer? _timer;

  void init(BuildContext context) {
    surahList = context.read<BuildViewBloc>().readQuranFullDetails.surahlist;
    selectedJus = context.read<BuildViewBloc>().readQuranFullDetails.juzList;
        WidgetsBinding.instance?.addPostFrameCallback((duration) async {
      final setting = context.read<SettingsBloc>().settingsModel;
      if (scrollController.hasClients) {
        if (selectedJus != null && setting.lastJuz != null) {
          if (selectedJus!.index == setting.lastJuz!.index) {
            scrollController.jumpTo(setting.lastJuzOffset);
          }
        } else if (setting.lastSurah != null) {
          if (context.read<BuildViewBloc>().selectedSurahList!.index == setting.lastSurah!.index) {
            scrollController.jumpTo(setting.lastSurahOffset);
          }
        }
      }
    });
  }


  scrollToBottom(double factor) {
    toggleToolBar();
    if (_speedFactor > 1) {
      _speedFactor = _speedFactor + (factor);
      int time = (scrollController.position.maxScrollExtent - scrollController.position.pixels) ~/ _speedFactor;
      final int h = Duration(seconds: time).inHours;
      final int m = Duration(seconds: time).inMinutes % 60;

      String hours = h > 0 ? '$h ساعة ' : '';
      String min = m > 0 ? '$m دقيقة ' : '';
      showSnakBar(Get.context!, ' ستقوم بأنهاء القراءة بعد : $hours  $min ');
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: Duration(seconds: time),
        curve: Curves.linear,
      );
    }
  }

  IndexesOfJuz calcStartIndex({required FullSurah surah, required int i}) {
    if (selectedJus != null) {
      if (selectedJus!.start.index == surah.index && selectedJus!.end.index == surah.index) {
        return IndexesOfJuz(length: int.parse(selectedJus!.end.verse) - int.parse(selectedJus!.start.verse) + 1, start: int.parse(selectedJus!.start.verse) + i);
      } else if (selectedJus!.start.index == surah.index) {
        return IndexesOfJuz(length: surah.count - int.parse(selectedJus!.start.verse) + 1, start: int.parse(selectedJus!.start.verse) + i);
      } else if (selectedJus!.end.index == surah.index) {
        return IndexesOfJuz(length: int.parse(selectedJus!.end.verse), start: i + 1);
      } else {
        return IndexesOfJuz(length: surah.count, start: i);
      }
    } else {
      return IndexesOfJuz(length: surah.count, start: i + 1);
    }
  }

  openToolBar() {
    toolBarPos = toolBarPos == -80 ? 8 : -80;
    toggleToolBar();
    emit(ReadQuranState());
  }

  isToolBarOpen() => toolBarPos == -80;

  toggleToolBar() {
    _timer?.cancel();
    _timer = Timer(const Duration(seconds: 3), () {
      if (toolBarPos == 8) {
        toolBarPos = toolBarPos == -80 ? 8 : -80;
        emit(ReadQuranState());
      }
    });
  }
}