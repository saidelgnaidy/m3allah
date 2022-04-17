import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:get/get.dart';
import 'package:m3allah/blocs/view_bloc/build_view_state.dart';
import 'package:m3allah/modle/azkar/azkar_model.dart';
import 'package:m3allah/modle/juz_list_modle/juz_list_modle.dart';
import 'package:m3allah/modle/quran/surah_model.dart';
import 'package:m3allah/modle/surah_list/surah_list.dart';
import 'package:m3allah/views/component/const.dart';

class BuildViewBloc extends Cubit<BuildViewState> {
  List<SurahList> surahList = <SurahList>[];
  List<AzkarList> azkarList = <AzkarList>[];
  List<JuzList> juzList = <JuzList>[];
  JuzList? selectedJuzList;
  SurahList? selectedSurahList;
  late ReadQuranFullDetails readQuranFullDetails;
  final AnimationController animationController;

  static ZoomDrawerController zoomDrawerController = ZoomDrawerController();

  BuildViewBloc(this.animationController) : super(const BuildViewState.initial());

  push(BuildViewState route) {
    toggleDrawer();
    state.maybeWhen(
      orElse: () => emit(route),
      readSurah: () => null,
      quran: (q) => null,
      sebha: () => null,
    );
  }

  void toggleDrawer() async {
    if (isMobile(Get.context!)) {
      animationController.isCompleted ? animationController.reverse() : animationController.forward();
    }
  }

  getQuranLists() async {
    emit(const BuildViewState.initial());
    var surahJson = await DefaultAssetBundle.of(Get.context!).loadString('assets/surah.json');
    surahList = surahListFromJson(surahJson);

    var juzJson = await DefaultAssetBundle.of(Get.context!).loadString('assets/juz.json');
    juzList = juzListFromJson(juzJson);

    emit(const BuildViewState.quran(initTap: 0));
  }

  getAzkar(String str) async {
    toggleDrawer();
    var zekrFile = await DefaultAssetBundle.of(Get.context!).loadString(str);
    azkarList = azkarListFromJson(zekrFile);
    emit(BuildViewState.azkar(list: azkarList));
  }

  getFullSurah(SurahList surah) async {
    emit(const BuildViewState.initial());

    selectedSurahList = surah;
    var s = await decodeSurah(surah.index);
    readQuranFullDetails = ReadQuranFullDetails(surahlist: [s], juzList: null);

    emit(const BuildViewState.readSurah());
  }

  getFullJuz(JuzList juz) async {
    List<FullSurah> _surahList = [];
    selectedJuzList = juz;
    emit(const BuildViewState.initial());

    for (int i = int.parse(juz.start.index); i <= int.parse(juz.end.index); i++) {
      var s = await decodeSurah(i.toString());
      _surahList.add(s);
    }

    readQuranFullDetails = ReadQuranFullDetails(surahlist: _surahList, juzList: juz);
    emit(const BuildViewState.readSurah());
  }

  Future<FullSurah> decodeSurah(String index) async {
    var surahContent = await DefaultAssetBundle.of(Get.context!).loadString('assets/surah/surah_$index.json');
    var transAR = await DefaultAssetBundle.of(Get.context!).loadString('assets/translation/ar/ar_translation_$index.json');
    var transEN = await DefaultAssetBundle.of(Get.context!).loadString('assets/translation/en/en_translation_$index.json');
    var transID = await DefaultAssetBundle.of(Get.context!).loadString('assets/translation/id/id_translation_$index.json');

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
