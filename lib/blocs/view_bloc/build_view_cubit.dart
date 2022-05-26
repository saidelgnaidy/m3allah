import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:m3allah/blocs/view_bloc/build_view_state.dart';
import 'package:m3allah/modle/azkar/azkar_model.dart';
import 'package:m3allah/modle/juz_list_modle/juz_list_modle.dart';
import 'package:m3allah/modle/quran/surah_model.dart';
import 'package:m3allah/modle/surah_list/surah_list.dart';
import 'package:m3allah/views/component/const.dart';

class BuildViewBloc extends Cubit<BuildViewState> {
  List<SurahList> surahList = <SurahList>[];
  List<JuzList> juzList = <JuzList>[];
  JuzList? selectedJuzList;
  SurahList? selectedSurahList;
  List<AzkarList> _azkarList = [];
  String lastAzkar = '';
  late ReadQuranFullDetails readQuranFullDetails;
  late AnimationController animationController;
  final TickerProvider vsync;

  BuildViewBloc(this.vsync) : super(const BuildViewState.initial()) {
    animationController = AnimationController(duration: const Duration(milliseconds: 300), vsync: vsync, value: 1.0);
  }

  static BuildViewBloc of(BuildContext context) {
    return BlocProvider.of<BuildViewBloc>(context);
  }

  push(BuildViewState route) {
    if (state != const BuildViewState.readSurah()) {
      emit(route);
      animationController.reverse();
      return;
    }
    if (animationController.value == 0) {
      emit(route);
      return;
    }
    animationController.reverse();
  }

  void toggleDrawer() async {
    if (isMobile(Get.context!)) {
      animationController.isCompleted ? animationController.reverse() : animationController.forward();
    }
  }

  getSeb7a() {
    animationController.reverse();
    emit(const BuildViewState.sebha());
  }

  getAzkar(String str) async {
    if (lastAzkar == str) {
      animationController.reverse();
      if (state.maybeMap(azkar: (val) => false, orElse: () => true)) {
        emit(BuildViewState.azkar(list: _azkarList));
      }
    } else {
      lastAzkar = str;
      animationController.reverse();
      emit(const BuildViewState.initial());

      var zekrFile = await DefaultAssetBundle.of(Get.context!).loadString(str, cache: true);
      final azkarList = azkarListFromJson(zekrFile);
      _azkarList = azkarList;
      await Future.delayed(const Duration(milliseconds: 10));

      emit(BuildViewState.azkar(list: azkarList));
    }
  }


  getQuranLists() async {
    if (surahList.isEmpty) {
      emit(const BuildViewState.initial());
      var surahJson = await DefaultAssetBundle.of(Get.context!).loadString('assets/surah.json', cache: true);
      surahList = surahListFromJson(surahJson);

      var juzJson = await DefaultAssetBundle.of(Get.context!).loadString('assets/juz.json', cache: true);
      juzList = juzListFromJson(juzJson);
    } else {
      animationController.reverse();
    }
    emit(const BuildViewState.quran(initTap: 0));
  }

  getFullSurah(SurahList surah) async {
    emit(const BuildViewState.initial());

    selectedSurahList = surah;
    var s = await decodeSurah(surah.index);
    readQuranFullDetails = ReadQuranFullDetails(surahlist: [s], juzList: null);

    emit(const BuildViewState.readSurah());
  }

  getFullJuz(JuzList juz) async {
    List<FullSurah> surahList = [];
    selectedJuzList = juz;
    emit(const BuildViewState.initial());

    for (int i = int.parse(juz.start.index); i <= int.parse(juz.end.index); i++) {
      var s = await decodeSurah(i.toString());
      surahList.add(s);
    }

    readQuranFullDetails = ReadQuranFullDetails(surahlist: surahList, juzList: juz);
    emit(const BuildViewState.readSurah());
  }

  Future<FullSurah> decodeSurah(String index) async {
    var surahContent = await DefaultAssetBundle.of(Get.context!).loadString('assets/surah/surah_$index.json', cache: true);
    var transAR = await DefaultAssetBundle.of(Get.context!).loadString('assets/translation/ar/ar_translation_$index.json', cache: true);
    var transEN = await DefaultAssetBundle.of(Get.context!).loadString('assets/translation/en/en_translation_$index.json', cache: true);
    var transID = await DefaultAssetBundle.of(Get.context!).loadString('assets/translation/id/id_translation_$index.json', cache: true);

    return FullSurah.fromJson(
      json: json.decode(surahContent),
      transAr: json.decode(transAR),
      transEn: json.decode(transEN),
      transid: json.decode(transID),
    );
  }

  Future<bool> onPopScope() async {
    if (animationController.isCompleted) {
      return true;
    } else {
      return state.maybeMap(
        orElse: () {
          animationController.forward();
          return false;
        },
        readSurah: (surah) {
          emit(BuildViewState.quran(initTap: readQuranFullDetails.juzList == null ? 0 : 1));
          return false;
        },
      );
    }
  }
}
